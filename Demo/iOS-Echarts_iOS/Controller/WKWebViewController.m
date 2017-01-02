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

@interface WKWebViewController () {
    NSArray *_allSupportThemes;
    PYOption *option;
}

@property (nonatomic, strong) WKEchartsView *echartsView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _allSupportThemes = @[PYEchartThemeMacarons, PYEchartThemeInfographic, PYEchartThemeShine, PYEchartThemeDark, PYEchartThemeBlue, PYEchartThemeGreen, PYEchartThemeRed, PYEchartThemeGray, PYEchartThemeHelianthus, PYEchartThemeRoma, PYEchartThemeMint, PYEchartThemeMacarons2, PYEchartThemeSakura, PYEchartThemeDefault];
    
    _echartsView = [[WKEchartsView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 320, self.view.bounds.size.width, 300)];
    [self.view addSubview:_echartsView];
    [_echartsView addHandlerForAction:PYEchartActionClick withBlock:^(NSDictionary *params) {
        NSLog(@"The params from Echarts:\n%@", params);
    }];
    option = [PYLineDemoOptions standardLineOption];
    [_echartsView setOption:option];
    [_echartsView loadEcharts];
}

- (IBAction)changeThemes:(id)sender {
    int randomIndex = arc4random() % _allSupportThemes.count;
    PYEchartTheme theme = _allSupportThemes[randomIndex];
    [_echartsView setTheme:theme];
    [_echartsView refreshEcharts];
}

- (IBAction)changeDatas:(id)sender {
    NSArray *maxDatas = @[@(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10)];
    option.series[0].dataEqual(maxDatas);
    NSArray *minDatas = @[@(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10)];
    option.series[1].dataEqual(minDatas);
    [_echartsView refreshEchartsWithOption:option];
}

- (IBAction)obtainDumpscreen:(id)sender {
    __weak __typeof(self) weakSelf = self;
    [_echartsView obtainEchartsImageWithType:PYEchartsViewImageTypePNG completed:^(UIImage *image) {
        weakSelf.imageView.image = image;
    }];
}

@end
