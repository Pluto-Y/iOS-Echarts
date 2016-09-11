//
//  PYTreeDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/11/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYTreeDemoOptions.h"

@implementation PYTreeDemoOptions

+ (PYOption *)tree1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"树图").subtextEqual(@"虚构数据");
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.show = YES;
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(YES);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(NO)
        .addSeries([PYTreeSeries initPYTreeSeriesWithBlock:^(PYTreeSeries *s) {
            s.rootLocationEqual(@{@"x":@"center", @"y":@50}).nodePaddingEqual(@1).nameEqual(@"树图").typeEqual(PYSeriesTypeTree)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(NO).formatterEqual(@"{b}");
                    }])
                    .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                        lineStyle.colorEqual([PYColor colorWithHexString:@"#48b"])
                        .shadowColorEqual([PYColor colorWithHexString:@"#000"])
                        .shadowBlurEqual(@3)
                        .shadowOffsetXEqual(@3)
                        .shadowOffsetYEqual(@5)
                        .typeEqual(PYLineStyleTypeCurve);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .addData(@{@"name":@"根节点", @"value":@6, @"children":@[@{@"name":@"节点1", @"value":@4, @"children":@[@{@"name":@"叶子节点1", @"value":@4}, @{@"name":@"叶子节点2", @"value":@4}, @{@"name":@"叶子节点3", @"value":@2}, @{@"name":@"叶子节点4", @"value":@2}, @{@"name":@"叶子节点5", @"value":@2}, @{@"name":@"叶子节点6", @"value":@4}]}, @{@"name":@"节点2", @"value":@4, @"children":@[@{@"name":@"叶子节点7", @"value":@4}, @{@"name":@"叶子节点8", @"value":@4}]}, @{@"name":@"节点3", @"value":@1, @"children":@[@{@"name":@"叶子节点9", @"value":@4}, @{@"name":@"叶子节点10", @"value":@4}, @{@"name":@"叶子节点11", @"value":@2}, @{@"name":@"叶子节点12", @"value":@2}]}]});
        }]);
    }];
}

+ (PYOption *)tree2Option {
    return nil;
}

+ (PYOption *)tree3Option {
    return nil;
}

@end
