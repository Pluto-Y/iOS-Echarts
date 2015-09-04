//
//  ViewController.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/4.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "ViewController.h"

#import "EChartUtil.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *kWeb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - custom functions
#pragma mark 初始化
/// 初始化
-(void)initAll {
    //UIWebView的属性
    NSString *urlString = [[NSBundle mainBundle] pathForResource:@"echarts" ofType:@"html"];
    NSURL *url =[NSURL URLWithString:urlString];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    _kWeb.scrollView.bounces = NO;
    _kWeb.opaque = NO;
    _kWeb.delegate = self;
    _kWeb.backgroundColor = [UIColor clearColor];
    [_kWeb loadRequest:request];
}

#pragma mark - Delegate
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {

    [EChartUtil showLineChart1:nil webView:_kWeb];
}

@end
