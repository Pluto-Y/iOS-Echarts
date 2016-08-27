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
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"树图";
    option.title.subtext = @"虚构数据";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = NO;
    
    PYTreeSeries *series = [[PYTreeSeries alloc] init];
    series.name = @"树图";
    series.type = PYSeriesTypeTree;
    series.orient = @"vertical";
    series.rootLocation = @{@"x":@"center", @"y":@50};
    series.nodePadding = @1;
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.show = NO;
    series.itemStyle.normal.label.formatter = @"{b}";
    series.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series.itemStyle.normal.lineStyle.color = [PYColor colorWithHexString:@"#48b"];
    series.itemStyle.normal.lineStyle.shadowColor = [PYColor colorWithHexString:@"#000"];
    series.itemStyle.normal.lineStyle.shadowBlur = @3;
    series.itemStyle.normal.lineStyle.shadowOffsetX = @3;
    series.itemStyle.normal.lineStyle.shadowOffsetY = @5;
    series.itemStyle.normal.lineStyle.type = PYLinkStyleTypeCurve;
    series.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series.itemStyle.emphasis.label = [[PYLabel alloc] init];
    series.itemStyle.emphasis.label.show = YES;
    NSDictionary *dataDic = @{@"name":@"根节点", @"value":@6, @"children":@[@{@"name":@"节点1", @"value":@4, @"children":@[@{@"name":@"叶子节点1", @"value":@4}, @{@"name":@"叶子节点2", @"value":@4}, @{@"name":@"叶子节点3", @"value":@2}, @{@"name":@"叶子节点4", @"value":@2}, @{@"name":@"叶子节点5", @"value":@2}, @{@"name":@"叶子节点6", @"value":@4}]}, @{@"name":@"节点2", @"value":@4, @"children":@[@{@"name":@"叶子节点7", @"value":@4}, @{@"name":@"叶子节点8", @"value":@4}]}, @{@"name":@"节点3", @"value":@1, @"children":@[@{@"name":@"叶子节点9", @"value":@4}, @{@"name":@"叶子节点10", @"value":@4}, @{@"name":@"叶子节点11", @"value":@2}, @{@"name":@"叶子节点12", @"value":@2}]}]};
    series.data = @[dataDic];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

- (void)showTreeDemo2 {
    
}

- (void)showTreeDemo3 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"手机品牌";
    option.title.subtext = @"线、节点样式";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"{b}: {c}";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = NO;
    PYTreeSeries *series = [[PYTreeSeries alloc] init];
    series.name = @"树图";
    series.type = PYSeriesTypeTree;
    series.orient = @"horizontal";
    series.rootLocation = @{@"x":@0, @"y":@"50%"};
    series.nodePadding = @5;
    series.symbol = PYSymbolCircle;
    series.symbolSize = @20;
    series.itemStyle = [[PYItemStyle alloc] init];
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.position = @"inside";
    normal.label.textStyle = [[PYTextStyle alloc] init];
    normal.label.textStyle.color = [PYColor colorWithHexString:@"#cc9999"];
    normal.label.textStyle.fontSize = @15;
    normal.label.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    normal.lineStyle = [[PYLineStyle alloc] init];
    normal.lineStyle.color = [PYColor colorWithHexString:@"#000"];
    normal.lineStyle.width = @1;
    normal.lineStyle.type = PYLineStyleTypeBroken;
    series.itemStyle.normal = normal;
    series.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series.itemStyle.emphasis.label = [[PYLabel alloc] init];
    series.itemStyle.emphasis.label.show = YES;
    
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
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

/*
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
 @"symbol":@20,
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
 */

@end
