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
            [self showTreeDemo3];
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
    }
    [_echartsView loadEcharts];
}

- (void)showTreeDemo3 {
//    PYOption *option = [[PYOption alloc] init];
    
    PYOption *option = [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.calculable = NO;
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.text = @"手机品牌";
            title.subtext = @"线、节点样式";
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip = [[PYTooltip alloc] init];
            tooltip.trigger = PYTooltipTriggerItem;
            tooltip.formatter = @"{b}: {c}";
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.feature = [[PYToolboxFeature alloc] init];
            toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
            toolbox.feature.mark.show = YES;
            toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
            toolbox.feature.dataView.show = YES;
            toolbox.feature.dataView.readOnly = NO;
            toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
            toolbox.feature.restore.show = YES;
        }]);
        
        PYTreeSeries *series = [PYTreeSeries initPYTreeSeriesWithBlock:^(PYTreeSeries *series) {
            series.name = @"树图";
            series.type = PYSeriesTypeTree;
            series.orient = @"horizontal";
            series.rootLocation = @{@"x":@0, @"y":@"50%"};
            series.nodePadding = @5;
            series.symbol = PYSymbolCircle;
            series.symbolSize = @20;

            series.itemStyle = [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.show = YES;
                        label.position = @"inside";
                        label.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.color = [PYColor colorWithHexString:@"#cc9999"];
                            textStyle.fontSize = @15;
                            textStyle.fontWeight = PYTextStyleFontWeightBolder;
                        }]);
                    }])
                    .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                        lineStyle = [[PYLineStyle alloc] init];
                        lineStyle.color = [PYColor colorWithHexString:@"#000"];
                        lineStyle.width = @1;
                        lineStyle.type = PYLineStyleTypeBroken;
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis = [[PYItemStyleProp alloc] init];
                    emphasis.label = [[PYLabel alloc] init];
                    emphasis.label.show = YES;
                }]);
            }];
        }];
        NSDictionary *dataDic = @{
                                  @"name":@"手机",
                                  @"value":@6,
                                  @"symboSize":@[@90, @70],
                                  @"symbol":@"image://http://www.iconpng.com/png/ecommerce-business/iphone.png",
                                  @"itemStyle":@{
                                          @"normal":
                                              @{
                                                  @"label":@{
                                                          @"show":@NO
                                                          }
                                                  }
                                          },
                                  @"children":@[
                                          @{
                                              @"name":@"小米",
                                              @"value":@4,
                                              @"symbol":@"image://http://pic.58pic.com/58pic/12/36/51/66d58PICMUV.jpg",
                                              @"itemStyle":@{
                                                      @"normal":
                                                          @{
                                                              @"label":@{
                                                                      @"show":@NO
                                                                      }
                                                              }
                                                      },
                                              @"symbolSize": @[@60, @60],
                                              @"children": @[
                                                      @{
                                                          @"name":@"小米1",
                                                          @"symbol":PYSymbolCircle,
                                                          @"symbolSize":@20,
                                                          @"value":@4,
                                                          @"itemStyle":@{
                                                                  @"normal":@{
                                                                          @"color":@"#fa6900",
                                                                          @"label":@{
                                                                                  @"show":@YES,
                                                                                  @"position":@"right"
                                                                                  }
                                                                          }
                                                                  },
                                                          @"emphasis":@{
                                                                  @"label":@{
                                                                          @"show":@NO
                                                                          },
                                                                  @"borderWidth":@0
                                                                  }
                                                          },
                                                      @{
                                                          @"name":@"小米2",
                                                          @"value":@4,
                                                          @"symbol":PYSymbolCircle,
                                                          @"symbolSize":@20,
                                                          @"itemStyle":@{
                                                                  @"normal":@{
                                                                          @"label":@{
                                                                                  @"show":@YES,
                                                                                  @"position":@"right",
                                                                                  @"formatter":@"{b}"
                                                                                  },
                                                                          @"color":@"#fa6900",
                                                                          @"borderWidth":@2,
                                                                          @"borderColor":@"#cc66ff"
                                                                          },
                                                                  @"emphasis":@{
                                                                          @"borderWidth":@0
                                                                          }
                                                                  }
                                                          
                                                          },
                                                      @{
                                                          @"name":@"小米3",
                                                          @"value":@2,
                                                          @"symbol":PYSymbolCircle,
                                                          @"symbolSize":@20,
                                                          @"itemStyle":@{
                                                                  @"normal":@{
                                                                          @"label":@{
                                                                                  @"position":@"right"
                                                                                  },
                                                                          @"color":@"#fa6900",
                                                                          @"brushType":@"stroke",
                                                                          @"borderWidth":@1,
                                                                          @"borderColor":@"#999966"
                                                                          },
                                                                  @"emphasis":@{
                                                                          @"borderWidth":@0
                                                                          }
                                                                  }
                                                          }
                                                      ]
                                              },
                                          @{
                                              @"name":@"苹果",
                                              @"symbol":@"image://http://www.viastreaming.com/images/apple_logo2.png",
                                              @"symbolSize":@[@60, @60],
                                              @"itemStyle":@{
                                                      @"normal":@{
                                                              @"label":@{
                                                                      @"show":@NO
                                                                      }
                                                              }
                                                      },
                                              @"value":@4
                                              
                                              },
                                          @{
                                              @"name":@"华为",
                                              @"symbol":@"image://http://market.huawei.com/hwgg/logo_cn/download/logo.jpg",
                                              @"symbolSize":@[@60, @60],
                                              @"itemStyle":@{
                                                      @"normal":@{
                                                              @"label":@{
                                                                      @"show":@NO
                                                                      }
                                                              }
                                                      },
                                              @"value":@2
                                              },
                                          @{
                                              @"name":@"联想",
                                              @"symbol":@"image://http://www.lenovo.com.cn/HomeUpload/Home001/6d94ee9a20140714.jpg",
                                              @"symbolSize":@[@100, @40],
                                              @"itemStyle":@{
                                                      @"normal":@{
                                                              @"label":@{
                                                                      @"show":@NO
                                                                      }
                                                              }
                                                      },
                                              @"value":@2
                                              }
                                          ]
                                  };
        series.data = @[dataDic];
        option.series  = [[NSMutableArray alloc] initWithArray:@[series]];
    }];
    
    [_echartsView setOption:option];
}

@end
