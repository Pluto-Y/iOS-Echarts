//
//  PYEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "PYEchartsView.h"
#import "PYAxis.h"
#import "PYLegend.h"
#import "PYOption.h"
#import "PYJsonUtil.h"

#define DEFAULT_WIDTH_DIFF_CONSTANT 100
#define DEFAULT_HEIGHT_DIFF_CONSTANT 70
#define DEFAULT_LEFT_MARGIN_DIFF_CONSTANT -50
#define DEFAULT_TOP_MARGIN_DIFF_CONSTANT -50
#define DEFAULT_HEAD_TOP_PADDING 45
#define DEFAULT_HEAD_LEFT_PADDING 50
#define DEFAULT_HEAD_RIGHT_PADDING 50
#define DEFAULT_BOTTOM_PADDING 30

#define     ACTION_TYPE_CLICK                   @"click"
#define     ACTION_TYPE_DBCLICK                 @"dblclick"
#define     ACTION_TYPE_DATA_ZOOM               @"dataZoom"
#define     ACTION_TYPE_LEGEND_SELECTED         @"legendSelected"
#define     ACTION_TYPE_MAGIC_TYPE_CHANGE       @"magicTypeChanged"

@interface PYEchartsView() {
    PYOption *option;
    NSURLRequest *localRequest;
    CGFloat lastScale;
    CGFloat minWidth;
    CGPoint tapPoint;
}

@end

@implementation PYEchartsView

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initAll];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initAll];
    }
    return self;
}

#pragma mark - custom functions
#pragma mark 初始化
/// 初始化变量
-(void)initAll {
//    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"iOS-Echarts" ofType:@"bundle"];
    NSBundle *echartsBundle = [NSBundle mainBundle];
    NSString *urlString = [echartsBundle pathForResource:@"echarts" ofType:@"html"];
    NSURL *url =[NSURL URLWithString:urlString];
    localRequest =[NSURLRequest requestWithURL:url];
    self.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    // 保证该view背景是透明的
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    
    _divSize = CGSizeZero;
    minWidth = self.frame.size.width - 10;
    
    
    _maxWidth = NSIntegerMax;
    
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchGestureHandle:)];
    pinchGestureRecognizer.cancelsTouchesInView = NO;
    [self addGestureRecognizer:pinchGestureRecognizer];
    
}

/**
 *  加载视图
 */
-(void)loadEcharts {
    [self loadRequest:localRequest];
}
/**
 *  刷新图表，而不是重新加载(即恢复到最初设置的option)
 */
-(void)refreshEcharts {
    NSString *js = [NSString stringWithFormat:@"myChart.refresh()"];
    [self stringByEvaluatingJavaScriptFromString:js];
}

/**
 *  根据新给的PYOption刷新Echarts
 *  通过该方法可以保证重新加载Echarts而是刷新
 *
 *  @param newOption EChart的option
 */
-(void)refreshEchartsWithOption:(PYOption *)newOption {
    NSString *jsonStr = [PYJsonUtil getJSONString:newOption];
    NSString *js = [NSString stringWithFormat:@"refreshWithOption(%@)", jsonStr];
    [self stringByEvaluatingJavaScriptFromString:js];
}

#pragma mark - Delegate
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    if (option == nil) {
        NSLog(@"ERROR: The option is nil.");
        return ;
    }
    [self resizeDiv];
    
    NSString *jsonStr = [PYJsonUtil getJSONString:option];
//    NSLog(@"%@",jsonStr);
    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"loadEcharts", jsonStr];
    [webView stringByEvaluatingJavaScriptFromString:js];
}

/**
 *  根据
 */
-(void)resizeDiv {
    float height = self.frame.size.height - 20;
    float width = self.frame.size.width;
    if (!CGSizeEqualToSize(_divSize, CGSizeZero)) {
        height = _divSize.height - 20;
        width = _divSize.width;
    } else {
        _divSize = CGSizeMake(width, height);
    }
    NSString *divSizeCss = [NSString stringWithFormat:@"'height:%.0fpx;width:%.0fpx;'", height, width];
    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"resizeDiv", divSizeCss];
    [self stringByEvaluatingJavaScriptFromString:js];
//    NSLog(@"cssText:%@", divSizeCss);
}

-(void)setOption:(PYOption *)pyOption {
    option = pyOption;
}


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

/**
 *  缩放手势
 */
-(void)pinchGestureHandle:(id)sender {
    UIPinchGestureRecognizer *recognizer = (UIPinchGestureRecognizer *)sender;
    int touchCount = (int)[recognizer numberOfTouches];
    //当手指离开屏幕时,将lastscale设置为1.0
    if([recognizer state] == UIGestureRecognizerStateEnded) {
        lastScale = 1.0;
        return;
    }
    CGFloat scale = 1.0 - (lastScale - [recognizer scale]);
    //    CGAffineTransform currentTransform = [recognizer view].transform;
    //    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, scale, scale);
    //    [[recognizer view]setTransform:newTransform];
    if (_divSize.width >= _maxWidth && scale > 1) {
        return;
    }
    if (_divSize.width <= minWidth && scale < 1) {
        return;
    }
    _divSize.width *= scale;
    
    if (_divSize.width < minWidth) {
        _divSize.width = minWidth;
    } else if (_divSize.width > _maxWidth) {
        _divSize.width = _maxWidth;
    }
    if (touchCount == 2) {
        CGPoint p1 = [recognizer locationOfTouch: 0 inView:self];
        CGPoint p2 = [recognizer locationOfTouch: 1 inView:self];
        CGPoint newCenter = CGPointMake((p1.x+p2.x)/2,(p1.y+p2.y)/2);
//        NSLog(@"%@", NSStringFromCGPoint(newCenter));
        [self.scrollView setContentOffset:CGPointMake((self.scrollView.contentOffset.x + newCenter.x) * scale - newCenter.x, self.scrollView.contentOffset.y)];
    }
    [self resizeDiv];
    
    lastScale = [recognizer scale];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    NSURL *url = request.URL;
    NSLog(@"%@", url);
    if (![[url.scheme lowercaseString] hasPrefix:@"pyechartaction"]) {
        return YES;
    }
    
    // get the action from the path
    NSString *actionType = url.host;
    // deserialize the request JSON
    NSString *jsonDictString = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
    // decode the json params to dictionary
    NSData *paramData = [jsonDictString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *paramsDic;
    if (jsonDictString != nil && ![jsonDictString isEqualToString:@""]) {
        paramsDic = [NSJSONSerialization JSONObjectWithData:paramData options:NSJSONReadingMutableContainers error:&err];
        if(err) {
            NSLog(@"Json decode failed：%@",err);
            paramsDic = nil;
        }
    }
    
    
    
    // look at the actionType and do whatever you want here
    if ([actionType isEqualToString:ACTION_TYPE_CLICK]) {
        if (tapPoint.x != 0 || tapPoint.y != 0) {
            if (paramsDic != nil) {
                if (_echartDelegate != nil && [_echartDelegate respondsToSelector:@selector(echartClick:pointInView:)]) {
                    [_echartDelegate echartClick:paramsDic pointInView:tapPoint];
                }
            }
            tapPoint = CGPointZero;
        }
    } else if([actionType isEqualToString:ACTION_TYPE_DBCLICK]  ) {
        
    }
    
    return NO;
}

@end
