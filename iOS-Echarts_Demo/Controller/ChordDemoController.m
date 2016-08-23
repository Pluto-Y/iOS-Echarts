//
//  ChordDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/24/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "ChordDemoController.h"

typedef NS_ENUM(NSInteger, ChordDemoTypeTag) {
    ChordDemoTypeTagBasicChord1        = 40001,
    ChordDemoTypeTagMultipleDimensions = 40002,
    ChordDemoTypeTagBasicChord2        = 40003,
    ChordDemoTypeTagNonRibbonChord     = 40004,
    ChordDemoTypeTagComplexTopology    = 40005,
    ChordDemoTypeTagChord              = 40006
};

@interface ChordDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation ChordDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"和线图";
    [self showBasicChordDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case ChordDemoTypeTagBasicChord1:
            [self showBasicChordDemo1];
            break;
        case ChordDemoTypeTagMultipleDimensions:
            [self showMultipleDimesionsDemo];
            break;
        case ChordDemoTypeTagBasicChord2:
            [self showBasicChordDemo2];
            break;
        case ChordDemoTypeTagNonRibbonChord:
            [self showNonRibbonChordDemo];
            break;
        case ChordDemoTypeTagComplexTopology:
            [self showComplexTopologyDemo];
            break;
        case ChordDemoTypeTagChord:
            [self showChord];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showBasicChordDemo1 {
    
}

- (void)showMultipleDimesionsDemo {
    
}

- (void)showBasicChordDemo2 {
    
}

- (void)showNonRibbonChordDemo {
    
}

- (void) showComplexTopologyDemo {
    
}

- (void)showChord {
    
}

@end
