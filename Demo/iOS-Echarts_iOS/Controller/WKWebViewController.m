//
//  WKWebViewController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 30/12/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "WKWebViewController.h"
#import "WKEchartsView.h"
#import "PYLineDemoOptions.h"

@interface WKWebViewController ()

@property (nonatomic, strong) WKEchartsView *echartsView;

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _echartsView = [[WKEchartsView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 320, self.view.bounds.size.width, 300)];
    [self.view addSubview:_echartsView];
    
    PYOption *option = [PYLineDemoOptions basicLineOption];
    
    [_echartsView setOption:option];
    [_echartsView loadEcharts];
}

@end
