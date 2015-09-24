//
//  PYEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "PYEchartsView.h"
#import "EChartUtil.h"
#import "PYAxis.h"
#import "PYLegend.H"

//#define DEFAULT_WIDTH_DIFF_CONSTANT 100
//#define DEFAULT_HEIGHT_DIFF_CONSTANT 70
//#define DEFAULT_LEFT_MARGIN_DIFF_CONSTANT -50
//#define DEFAULT_TOP_MARGIN_DIFF_CONSTANT -50
//#define DEFAULT_LEGEND_HEIGHT 50

#define DEFAULT_WIDTH_DIFF_CONSTANT 100
#define DEFAULT_HEIGHT_DIFF_CONSTANT 70
#define DEFAULT_LEFT_MARGIN_DIFF_CONSTANT -50
#define DEFAULT_TOP_MARGIN_DIFF_CONSTANT -50
#define DEFAULT_HEAD_TOP_PADDING 45
#define DEFAULT_HEAD_LEFT_PADDING 50
#define DEFAULT_HEAD_RIGHT_PADDING 50
#define DEFAULT_BOTTOM_PADDING 30

@interface PYEchartsView() {
    PYOption *option;
    NSURLRequest *request;
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
    NSString *urlString = [[NSBundle mainBundle] pathForResource:@"echarts" ofType:@"html"];
    NSURL *url =[NSURL URLWithString:urlString];
    request =[NSURLRequest requestWithURL:url];
    self.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    // 保证该view背景是透明的
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    
}

/**
 *  加载视图
 */
-(void)loadEcharts {
    [self loadRequest:request];
}

#pragma mark - Delegate
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self resizeDiv];
    [EChartUtil showLineChart1:option webView:webView];
}

/**
 *  根据
 *
 *  @param webView <#webView description#>
 */
-(void)resizeDiv {
    float height = self.frame.size.height + DEFAULT_HEIGHT_DIFF_CONSTANT - _padding.top - _padding.bottom;
    float width = self.frame.size.width + DEFAULT_WIDTH_DIFF_CONSTANT - _padding.left - _padding.right;
    float paddingLeft = _padding.left + DEFAULT_LEFT_MARGIN_DIFF_CONSTANT;
    float paddingTop = _padding.top + DEFAULT_TOP_MARGIN_DIFF_CONSTANT;
    float paddingRight = _padding.right;
    float paddingBottom = _padding.bottom;
    float minLeft = 0.0; // title或legend哪个的x最小
    float minTop = 0.0;
    BOOL hasRight = NO;
    if(option != nil) {
        if (option.title != nil && option.title.show) {
            if ([option.title.x isKindOfClass:[NSString class]]) {
                if ([option.title.x isEqualToString:@"left"]) {
                    minLeft = 0.0;
                } else if ([option.title.x isEqualToString:@"right"]) {
                    hasRight = YES;
                }
                
            } else if ([option.title.x isKindOfClass:[NSNumber class]]) {
                minLeft = [option.title.x floatValue];
            }
            if ([option.title.y isKindOfClass:[NSString class]] && [option.title.y isEqualToString:@"top"]) {
                minTop = 0.0;
            } else if ([option.title.y isKindOfClass:[NSNumber class]]) {
                minTop = [option.title.y floatValue];
            }
        }
        if (option.legend != nil && option.legend.show) {
            if([option.legend.x isKindOfClass:[NSString class]]) {
                if ([option.legend.x isEqualToString:@"left"]) {
                    minLeft = 0.0;
                } else if ([option.legend.x isEqualToString:@"right"]) {
                    hasRight = YES;
                }
            } else if ([option.legend.x isKindOfClass:[NSNumber class]]) {
                if ([option.legend.x floatValue] < minLeft) {
                    minLeft = [option.legend.x floatValue];
                }
            }
            if ([option.legend.y isKindOfClass:[NSString class]] && [option.legend.y isEqualToString:@"top"]) {
                minTop = 0.0;
            } else if ([option.legend.y isKindOfClass:[NSNumber class]]) {
                if ([option.legend.y floatValue] < minTop) {
                    minTop = [option.legend.y floatValue];
                }
            }
        }
        if (option.toolbox != nil && option.toolbox.show) {
            if ([option.toolbox.x isKindOfClass:[NSString class]]) {
                if ([option.toolbox.x isEqualToString:@"left"]) {
                    minLeft = 0.0;
                } else if ([option.toolbox.x isEqualToString:@"right"]) {
                    hasRight = YES;
                }
            } else if ([option.toolbox.x isKindOfClass:[NSNumber class]]) {
                if ([option.toolbox.x floatValue] < minLeft) {
                    minLeft = [option.toolbox.x floatValue];
                }
            }
            if ([option.toolbox.y isKindOfClass:[NSString class]] && [option.toolbox.y isEqualToString:@"top"]) {
                minTop = 0.0;
            } else if ([option.toolbox.y isKindOfClass:[NSNumber class]]) {
                if ([option.toolbox.y floatValue] < minTop) {
                    minTop = [option.toolbox.y floatValue];
                }
            }
        }
        if (minLeft > 0) {
            if (minLeft < DEFAULT_HEAD_LEFT_PADDING) {
                paddingLeft += DEFAULT_HEAD_LEFT_PADDING - minLeft;
                width -= DEFAULT_HEAD_LEFT_PADDING - minLeft;
            }
        } else {
            paddingLeft += DEFAULT_HEAD_LEFT_PADDING;
            width -= DEFAULT_HEAD_LEFT_PADDING;
        }
        
        if (minTop > 0) {
            if (minTop < DEFAULT_HEAD_TOP_PADDING) {
                paddingTop += DEFAULT_HEAD_TOP_PADDING - minTop;
                height -= DEFAULT_HEAD_TOP_PADDING - minTop;
            }
        } else {
            paddingTop += DEFAULT_HEAD_TOP_PADDING;
            height -= DEFAULT_HEAD_TOP_PADDING;
        }
        if (hasRight) {
            paddingRight += DEFAULT_HEAD_RIGHT_PADDING;
            width -= DEFAULT_HEAD_RIGHT_PADDING;
        }
        if (option.dataZoom != nil && option.dataZoom.show) {
            paddingBottom += DEFAULT_BOTTOM_PADDING;
            height -= DEFAULT_BOTTOM_PADDING;
        }
    }
    
    NSString *divSizeCss = [NSString stringWithFormat:@"'height:%.0fpx;width:%.0fpx;margin-left:%.0fpx;margin-top:%.0fpx;margin-right:%.0fpx;margin-bottom:%.0fpx;'", height, width, paddingLeft, paddingTop, paddingRight, paddingBottom] ;
    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"resizeDiv", divSizeCss];
    [self stringByEvaluatingJavaScriptFromString:js];
    NSLog(@"cssText:%@", divSizeCss);
}

-(void)setOption:(PYOption *)pyOption {
    option = pyOption;
}

@end
