//
//  PYEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "PYEchartsView.h"
#import "EChartUtil.h"

#define DEFAULT_WIDTH_DIFF_CONSTANT 100
#define DEFAULT_HEIGHT_DIFF_CONSTANT 70
#define DEFAULT_LEFT_MARGIN_DIFF_CONSTANT -50
#define DEFAULT_TOP_MARGIN_DIFF_CONSTANT -50


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
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    self.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    // 保证该view背景是透明的
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    [self loadRequest:request];
}

#pragma mark - Delegate
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSString *divSizeCss = [NSString stringWithFormat:@"'height:%.0fpx;width:%.0fpx;margin-left:%.0fpx;margin-top:%.0fpx;margin-right:%.0fpx;margin-bottom:%.0fpx;'", webView.frame.size.height + DEFAULT_HEIGHT_DIFF_CONSTANT - _padding.left - _padding.right, webView.frame.size.width + DEFAULT_WIDTH_DIFF_CONSTANT, _padding.left + DEFAULT_LEFT_MARGIN_DIFF_CONSTANT, _padding.top + DEFAULT_TOP_MARGIN_DIFF_CONSTANT, _padding.right, _padding.bottom] ;
    // 根据UIWebView调整里面的ECharts的显示大小
//    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"initAll", [NSString stringWithFormat:@"{\"width\":\"%.0f\", \"height\":\"%.0f\"}", webView.frame.size.width, webView.frame.size.height]];
    NSLog(@"cssText:%@", divSizeCss);
    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"resizeDiv", divSizeCss];
    [webView stringByEvaluatingJavaScriptFromString:js];
    [EChartUtil showLineChart1:nil webView:webView];
}

@end
