//
//  ViewController.m
//  iOS-Echarts_OSX
//
//  Created by Pluto Y on 9/2/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (weak) IBOutlet PYEchartsView *echartsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    [self reloadBtnClick:nil];
}

- (IBAction)reloadBtnClick:(id)sender {
    NSUInteger randNum = arc4random_uniform(10);
    PYOption *option;
    switch (randNum) {
        case 0:
            option = [PYLineDemoOptions standardLineOption];
            break;
        case 1:
            option = [PYLineDemoOptions stackedLineOption];
            break;
        case 2:
            option = [PYLineDemoOptions basicLineOption];
            break;
        case 3:
            option = [PYLineDemoOptions basicAreaOption];
            break;
        case 4:
            option = [PYLineDemoOptions stackedAreaOption];
            break;
        case 5:
            option = [PYLineDemoOptions irregularLineOption];
            break;
        case 6:
            option = [PYLineDemoOptions irregularLine2Option];
            break;
        case 7:
            option = [PYLineDemoOptions irregularLine2Option];
            break;
        case 8:
            option = [PYLineDemoOptions lineOption];
            break;
        case 9:
            option = [PYLineDemoOptions logarithmicOption];
            break;
        default:
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
        [_echartsView loadEcharts];
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
