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
#import "PYLoadingOption.h"

NSString * const PYEchartActionClick = @"click";
NSString * const PYEchartActionDbClick = @"dblclick";
NSString * const PYEchartActionMapSelected = @"mapSelected";
NSString * const PYEchartActionDataZoom = @"dataZoom";
NSString * const PYEchartActionLegendSelected = @"legendSelected";
NSString * const PYEchartActionMagicTypeChange = @"magicTypeChanged";

@interface PYEchartsView() {
    NSURLRequest *localRequest;
    CGFloat lastScale;
    CGFloat minWidth;
    CGPoint tapPoint;
    // This params store the handler of the echart actions
    NSMutableDictionary<NSString *, PYEchartActionHandler> *actionHandleBlocks;
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
/// Initialize
-(void)initAll {
//    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"iOS-Echarts" ofType:@"bundle"];
    NSBundle *echartsBundle = [NSBundle mainBundle];
    NSString *urlString = [[echartsBundle pathForResource:@"echarts" ofType:@"html"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]; // Fixes the url string contain chinese characters
    NSURL *url =[NSURL URLWithString:urlString];
    localRequest =[NSURLRequest requestWithURL:url];
    self.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    // set the view background is transparent
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    
    _divSize = CGSizeZero;
    minWidth = self.frame.size.width - 10;
    _scalable = NO;
    
    
    _maxWidth = NSIntegerMax;
    actionHandleBlocks = [[NSMutableDictionary alloc] init];
    
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchGestureHandle:)];
    pinchGestureRecognizer.cancelsTouchesInView = NO;
    [self addGestureRecognizer:pinchGestureRecognizer];
    
}

/**
 *  Set the option for echart
 *
 *  @param pyOption The echart option
 */
-(void)setOption:(PYOption *)pyOption {
    option = pyOption;
}

/**
 *  Load the web view request
 */
-(void)loadEcharts {
    [self loadRequest:localRequest];
}

/**
 *  Call the js method
 *
 *  @param methodWithParam The format:`[instance.]methodname(params)`
 */
-(void)callJsMethods:(NSString *)methodWithParam {
    [self stringByEvaluatingJavaScriptFromString:methodWithParam];
}

/**
 *  Resize the main div in the `echarts.html`
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
}

#pragma mark - Echarts methods
/**
 *  Refresh echarts not re-load echarts
 *  The option is the last option you had set
 */
-(void)refreshEcharts {
    [self callJsMethods:@"myChart.refresh()"];
}

/**
 *  Refresh echar with the option
 *  You can call this method for refreshing not re-load the echart
 *
 *  @param newOption EChart's option
 */
-(void)refreshEchartsWithOption:(PYOption *)newOption {
    NSString *jsonStr = [PYJsonUtil getJSONString:newOption];
    NSLog(@"jsonStr:%@", jsonStr);
    [self callJsMethods:[NSString stringWithFormat:@"refreshWithOption(%@)", jsonStr]];
}

/**
 *  Add the echart action handler
 *
 *  @param name  The echart event name
 *  @param block The block handler
 */
-(void)addHandlerForAction:(NSString *) name withBlock:(PYEchartActionHandler) block {
    [actionHandleBlocks setObject:block forKey:name];
    [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler(%@)",name]];
}

/**
 *  Remove the echart action hander
 *
 *  @param name The echart event name
 */
-(void)removeHandlerForAction:(NSString *)name {
    [actionHandleBlocks removeObjectForKey:name];
    [self callJsMethods:[NSString stringWithFormat:@"removeEchartActionHandler(%@)",name]];
}

/**
 *  Option for the loading screen, show a loading label text.
 *
 *  @param loadingOption The loading options control the appearance of the loading screen that covers the plot area on chart operations.
 */
-(void)showLoading:(PYLoadingOption *)loadingOption {
    NSString *loadingOptionStr = [PYJsonUtil getJSONString:loadingOption];
    NSLog(@"loadingOption:%@", loadingOptionStr);
    [self callJsMethods:[NSString stringWithFormat:@"myChart.showLoading(%@)",loadingOptionStr]];
}

/**
 *  Hide loading screen
 */
-(void)hideLoading {
    [self callJsMethods:@"myChart.hideLoading()"];
}

/**
 *  Clear the drawing content. Instances are available after Clearing.
 */
-(void)clearEcharts {
    [self callJsMethods:@"myChart.clear()"];
}

#pragma mark - Delegate
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    if (option == nil) {
        NSLog(@"Warning: The option is nil.");
        [self callJsMethods:@"initEchartView()"];
        return ;
    }
    [self resizeDiv];
    
    NSString *jsonStr = [PYJsonUtil getJSONString:option];
    NSString *js;
    NSLog(@"%@",jsonStr);
   
    if (_noDataLoadingOption != nil) {
        NSLog(@"nodataLoadingOption:%@", [PYJsonUtil getJSONString:_noDataLoadingOption]);
        NSString *noDataLoadingOptionString = [NSString stringWithFormat:@"{\"noDataLoadingOption\":%@ \n}", [PYJsonUtil getJSONString:_noDataLoadingOption]];
        js = [NSString stringWithFormat:@"%@(%@, %@)", @"loadEcharts", jsonStr, noDataLoadingOptionString];
    } else {
        js = [NSString stringWithFormat:@"%@(%@)", @"loadEcharts", jsonStr];
    }
    [webView stringByEvaluatingJavaScriptFromString:js];
    for (NSString * name in actionHandleBlocks.allKeys) {
        NSLog(@"%@", [NSString stringWithFormat:@"addEchartActionHandler('%@')",name]);
        [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler('%@')",name]];//
    }

}

/**
 *  This method the echart action, the http link in the echarts and other links
 *  If the scheme is the http, it will be opened by the sifari
 *  If the scheme is pyechartaction, it means that url is the echart event, then it will call the block to handle the action
 *  If the sheeme is others, use the default action
 */
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    NSURL *url = request.URL;
    NSLog(@"%@", url);
    if ([[url.scheme lowercaseString] hasPrefix:@"http"]) { // Just open with the safari
        [[UIApplication sharedApplication] openURL:url];
        return NO;
    }
    if (![[url.scheme lowercaseString] hasPrefix:@"pyechartaction"]) {
        return YES;
    }
    
    // get the action from the path
    NSString *actionType = url.host;
    // deserialize the request JSON
    NSString *jsonDictString = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    // decode the json params to dictionary
    NSData *paramData = [jsonDictString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *paramsDic;
    if (jsonDictString != nil && ![jsonDictString isEqualToString:@""]) {
        paramsDic = [NSJSONSerialization JSONObjectWithData:paramData options:NSJSONReadingMutableLeaves error:&err];
        if(err) {
            NSLog(@"Json decode failed：%@",err);
            paramsDic = nil;
        }
    }
    
    // Check the action handle actions, if exists the block the invoke the block
    if (actionHandleBlocks[actionType] != nil) {
        PYEchartActionHandler hanler = (PYEchartActionHandler)actionHandleBlocks[actionType];
        hanler(paramsDic);
    }
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

/**
 *  The pinch gesture handle
 */
-(void)pinchGestureHandle:(id)sender {
    if (!_scalable) {
        return;
    }
    UIPinchGestureRecognizer *recognizer = (UIPinchGestureRecognizer *)sender;
    int touchCount = (int)[recognizer numberOfTouches];
    // Reset the scale valeu when the event is end
    if([recognizer state] == UIGestureRecognizerStateEnded) {
        lastScale = 1.0;
        return;
    }
    CGFloat scale = 1.0 - (lastScale - [recognizer scale]);
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

@end
