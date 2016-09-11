//
//  TreeDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/27/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "TreeDemoController.h"

typedef NS_ENUM(NSInteger, TreeDemoTypeTag) {
    TreeDemoTypeTagTree1 = 40001,
    TreeDemoTypeTagTree2 = 40002,
    TreeDemoTypeTagTree3 = 40003
};

@interface TreeDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation TreeDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void) initAll {
    self.title = @"树图";
    [_echartsView setOption:[PYTreeDemoOptions tree1Option]];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case TreeDemoTypeTagTree1:
            option = [PYTreeDemoOptions tree1Option];
            break;
        case TreeDemoTypeTagTree2:
            option = [PYTreeDemoOptions tree2Option];
            break;
        case TreeDemoTypeTagTree3:
            option = [PYTreeDemoOptions tree3Option];
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
    }
    [_echartsView loadEcharts];
}

@end
