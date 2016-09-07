//
//  WordCloudDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/10/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "WordCloudDemoController.h"
#import "PYWorldCloudDemoOptions.h"

@interface WordCloudDemoController ()<PYEchartsViewDelegate>

@property (weak, nonatomic) IBOutlet PYEchartsView *kEcharts;

@end

@implementation WordCloudDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"字符云";
    _kEcharts.eDelegate = self;
    PYOption *option = [PYWorldCloudDemoOptions worldCloudOption];
    [_kEcharts setOption:option];
    [_kEcharts loadEcharts];
}

#pragma mark PYEchartsViewDelegate
- (BOOL)echartsView:(PYEchartsView *)echartsView didReceivedLinkURL:(NSURL *)url {
    [[UIApplication sharedApplication] openURL:url];
    return NO;
}

@end
