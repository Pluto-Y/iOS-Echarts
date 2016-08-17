//
//  GaugesDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/18/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "GaugesDemoController.h"

typedef NS_ENUM(NSInteger, GaugesDemoTypeTag) {
    GaugesDemoTypeTagBasicAngularGauge1         = 40001,
    GaugesDemoTypeTagBasicAngularGauge2         = 40002,
    GaugesDemoTypeTagBasicAngularGauge3         = 40003,
    GaugesDemoTypeTagMultipleAngularGauges1     = 40004,
    GaugesDemoTypeTagMultipleAngularGauges2     = 40005,
    GaugesDemoTypeTagBasicAngularGauge4         = 40006
};

@interface GaugesDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation GaugesDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"仪表盘";
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case GaugesDemoTypeTagBasicAngularGauge1:
            [self showBasicAngularGauge1Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge2:
            [self showBasicAngularGauge2Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge3:
            [self showBasicAngularGauge3Demo];
            break;
        case GaugesDemoTypeTagMultipleAngularGauges1:
            [self showMultipleAngularGauges1Demo];
            break;
        case GaugesDemoTypeTagMultipleAngularGauges2:
            [self showMultipleAngularGauges2Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge4:
            [self showBasicAngularGauge4Demo];
            break;
        default:
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showBasicAngularGauge1Demo {
    
}

- (void)showBasicAngularGauge2Demo {
    
}

- (void)showBasicAngularGauge3Demo {
    
}

- (void)showMultipleAngularGauges1Demo {
    
}

- (void)showMultipleAngularGauges2Demo {
    
}

- (void)showBasicAngularGauge4Demo {
    
}

@end
