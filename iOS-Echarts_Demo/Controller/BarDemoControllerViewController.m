//
//  BarDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "BarDemoControllerViewController.h"

typedef enum {
    BarDemoTypeTagBasicColumn = 20000,
    BarDemoTypeTagStackedColumn = 20001,
    BarDemoTypeTagTermometer = 20002,
    BarDemoTypeTagCompositiveWaterfall = 20003,
    BarDemoTypeTagChangeWaterfall = 20004,
    BarDemoTypeTagStackedAndClusteredColumn = 20005,
    BarDemoTypeTagBasicBar = 20006,
    BarDemoTypeTagStackedBar = 20007,
    BarDemoTypeTagStackedFloatingBar = 20008,
    BarDemoTypeTagTornado = 20009,
    BarDemoTypeTagTornado2 = 20010,
    BarDemoTypeTagIrrgularBar = 20011,
    BarDemoTypeTagTimeline = 20012,
    BarDemoTypeTagRainbowBar = 20013,
    BarDemoTypeTagMultipleSreiesRainbowBar = 20014,
    BarDemoTypeTagColumn = 20015
}BarDemoTypeTag;

@interface BarDemoControllerViewController ()

@end

@implementation BarDemoControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
-(void)initAll {
    
}


- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case BarDemoTypeTagBasicColumn:
            
            break;
        case BarDemoTypeTagStackedColumn:
            break;
        case BarDemoTypeTagTermometer:
            break;
        case BarDemoTypeTagCompositiveWaterfall:
            break;
        case BarDemoTypeTagChangeWaterfall:
            break;
        case BarDemoTypeTagStackedAndClusteredColumn:
            break;
        case BarDemoTypeTagBasicBar:
            break;
        case BarDemoTypeTagStackedBar:
            break;
        case BarDemoTypeTagStackedFloatingBar:
            break;
        case BarDemoTypeTagTornado:
            break;
        case BarDemoTypeTagTornado2:
            break;
        case BarDemoTypeTagIrrgularBar:
            break;
        case BarDemoTypeTagTimeline:
            break;
        case BarDemoTypeTagRainbowBar:
            break;
        case BarDemoTypeTagMultipleSreiesRainbowBar:
            break;
        case BarDemoTypeTagColumn:
            break;
        default:
            break;
    }
    
}

/**
 *  标准柱状图
 */
-(void)showBasicColumnDemo {
    
}


@end
