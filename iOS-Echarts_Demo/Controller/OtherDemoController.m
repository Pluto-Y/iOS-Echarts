//
//  OtherDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "OtherDemoController.h"
#import "PYLoadingOption.h"
static int effectIndex = 0;
static NSArray *effect;
@interface OtherDemoController () {
    NSTimer *loadingTimer;
}

@end

@implementation OtherDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    loadingTimer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
    [self showLoadingDemo];
}

-(void)initAll {
    effect = @[@"spin", @"bar", @"ring", @"whirling", @"dynamicLine", @"bubble"];
    loadingTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(clearLoading) userInfo:nil repeats:YES];
    loadingTimer.fireDate = [NSDate distantFuture];
    [_yEchartsView loadEcharts];
}

- (IBAction)showOtherDemo:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 90001:
            [_yEchartsView clearEcharts];
            loadingTimer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
            [self showLoadingDemo];
            break;
        default:
            break;
    }
}

-(void)clearLoading {
    [_yEchartsView hideLoading];
    [_yEchartsView loadEcharts];
    loadingTimer.fireDate = [NSDate distantFuture];
}

-(void)showLoadingDemo {
    effectIndex = (effectIndex + 1) % (int)effect.count;
    PYLoadingOption *loadingOption = [[PYLoadingOption alloc] init];
    loadingOption.text = effect[effectIndex];
    loadingOption.effect = effect[effectIndex];
    [_yEchartsView showLoading:loadingOption];
    NSString *basicColumnJson = @"{\"tooltip\":{\"trigger\":\"axis\"},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"line\",\"bar\"]},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"legend\":{\"data\":[\"蒸发量\",\"降水量\"]},\"xAxis\":[{\"type\":\"category\",\"data\":[\"1月\",\"2月\",\"3月\",\"4月\",\"5月\",\"6月\",\"7月\",\"8月\",\"9月\",\"10月\",\"11月\",\"12月\"]}],\"yAxis\":[{\"type\":\"value\"}],\"series\":[{\"name\":\"蒸发量\",\"type\":\"bar\",\"data\":[2,4.9,7,23.2,25.6,76.7,135.6,162.2,32.6,20,6.4,3.3]},{\"name\":\"降水量\",\"type\":\"bar\",\"data\":[2.6,5.9,9,26.4,28.7,70.7,175.6,182.2,48.7,18.8,6,2.3]}]}";
    NSData *jsonData = [basicColumnJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_yEchartsView setOption:option];
}

@end
