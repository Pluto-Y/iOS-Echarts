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
    [self showTreeDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case TreeDemoTypeTagTree1:
            [self showTreeDemo1];
            break;
        case TreeDemoTypeTagTree2:
            [self showTreeDemo2];
            break;
        case TreeDemoTypeTagTree3:
            [self showTreeDemo3];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showTreeDemo1 {
    
}

- (void)showTreeDemo2 {
    
}

- (void)showTreeDemo3 {
    
}

@end
