//
//  EventRiverController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/29/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "EventRiverController.h"

typedef NS_ENUM(NSInteger, EventRiverDemoTypeTag) {
    EventRiverDemoTypeTag1 = 40001,
    EventRiverDemoTypeTag2 = 40002
};

@interface EventRiverController ()
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation EventRiverController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"事件河流图";
    [self showEventRiverDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case EventRiverDemoTypeTag1:
            [self showEventRiverDemo1];
            break;
        case EventRiverDemoTypeTag2:
            [self showEventRiverDemo2];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showEventRiverDemo1 {
    
}

- (void)showEventRiverDemo2 {
    
}

@end
