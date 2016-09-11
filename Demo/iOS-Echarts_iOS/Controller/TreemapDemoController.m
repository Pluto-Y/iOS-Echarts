//
//  TreemapDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/15/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "TreemapDemoController.h"

typedef NS_ENUM(NSInteger, TreemapDemoTypeTag) {
    TreemapDemoTypeTagTreemap1    = 30001,
    TreemapDemoTypeTagTreemap2    = 30002,
    TreemapDemoTypeTagTreemap3    = 30003
};

@interface TreemapDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation TreemapDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"矩形树图";
    PYOption *option = [PYTreemapDemoOptions treemap1Option];
    [_echartsView setOption:option];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case TreemapDemoTypeTagTreemap1:
            option = [PYTreemapDemoOptions treemap1Option];
            break;
        case TreemapDemoTypeTagTreemap2:
            option = [PYTreemapDemoOptions treemap2Option];
            break;
        case TreemapDemoTypeTagTreemap3:
            option = [PYTreemapDemoOptions treemap3Option];
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
    }
    [_echartsView loadEcharts];
}

@end
