//
//  PYEventRiverDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 22/09/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYEventRiverDemoOptions.h"

@implementation PYEventRiverDemoOptions

+ (PYOption *)eventRiver1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"Event River").subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem).enterableEqual(YES);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"财经事件", @"政治事件"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES).featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeTime).boundaryGapEqual(@[@0.05, @0.1]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@10)
            .x2Equal(@30);
        }])
        .addSeries([PYEventRiverSeries initPYEventRiverSeriesWithBlock:^(PYEventRiverSeries *series) {
            series.weightEqual(@123)
            .nameEqual(@"政治事件")
            .typeEqual(PYSeriesTypeEventRiver)
            .dataEqual(@[@{
                             @"name":@"Apec峰会",
                             @"weight":@123,
                             @"evolution":@[@{
                                                @"time":@"2014-05-06",
                                                @"value":@14,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-07",
                                                @"value":@34,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-08",
                                                @"value":@60,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-09",
                                                @"value":@40,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-10",
                                                @"value":@20,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }
                                            ]
                             }, @{
                             @"name":@"运城官帮透视",
                             @"weight":@123,
                             @"evolution":@[@{
                                                @"time":@"2014-05-08",
                                                @"value":@4,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-09",
                                                @"value":@14,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-10",
                                                @"value":@30,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-11",
                                                @"value":@20,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-12",
                                                @"value":@10,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }
                                            ]
                             }, @{
                             @"name":@"底层公务员收入超过副部长",
                             @"weight":@123,
                             @"evolution":@[@{
                                                @"time":@"2014-05-11",
                                                @"value":@4,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-12",
                                                @"value":@24,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-13",
                                                @"value":@40,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-14",
                                                @"value":@20,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-15",
                                                @"value":@15,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-16",
                                                @"value":@10,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }
                                            ]
                             }
                         ]);
            
        }])
        .addSeries([PYEventRiverSeries initPYEventRiverSeriesWithBlock:^(PYEventRiverSeries *series) {
            series.weightEqual(@123)
            .nameEqual(@"财经事件")
            .typeEqual(PYSeriesTypeEventRiver)
            .dataEqual(@[
                         @{
                             @"name":@"阿里巴巴上市",
                             @"weight":@123,
                             @"evolution":@[
                                     @{
                                         @"time":@"2014-05-01",
                                         @"value":@14,
                                         
                                         
                                         
                                         @"detail":@{
                                                 @"link":@"http://www.baidu.com",
                                                 @"text":@"百度指数",
                                                 @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                 }
                                         }, @{
                                         @"time":@"2014-05-02",
                                         @"value":@34,
                                         @"detail":@{
                                                 @"link":@"http://www.baidu.com",
                                                 @"text":@"百度指数",
                                                 @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                 }
                                         }, @{
                                         @"time":@"2014-05-03",
                                         @"value":@60,
                                         @"detail":@{
                                                 @"link":@"http://www.baidu.com",
                                                 @"text":@"百度指数",
                                                 @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                 }
                                         }, @{
                                         @"time":@"2014-05-04",
                                         @"value":@40,
                                         @"detail":@{
                                                 @"link":@"http://www.baidu.com",
                                                 @"text":@"百度指数",
                                                 @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                 }
                                         }, @{
                                         @"time":@"2014-05-05",
                                         @"value":@10,
                                         @"detail":@{
                                                 @"link":@"http://www.baidu.com",
                                                 @"text":@"百度指数",
                                                 @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                 }
                                         }
                                     ]
                             
                             }, @{
                             @"name":@"阿里巴巴上市2",
                             @"weight":@123,
                             @"evolution":@[@{
                                                @"time":@"2014-05-02",
                                                @"value":@10,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-03",
                                                @"value":@34,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-04",
                                                @"value":@40,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-05",
                                                @"value":@10,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }
                                            ]
                             }, @{
                             @"name":@"三星业绩暴跌",
                             @"weight":@123,
                             @"evolution":@[@{
                                                @"time":@"2014-05-03",
                                                @"value":@24,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-04",
                                                @"value":@34,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-05",
                                                @"value":@50,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-06",
                                                @"value":@30,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }, @{
                                                @"time":@"2014-05-07",
                                                @"value":@20,
                                                @"detail":@{
                                                        @"link":@"http://www.baidu.com",
                                                        @"text":@"百度指数",
                                                        @"img":@"http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png"
                                                        }
                                                }
                                            ]
                             
                             }
                         ]);
        }]);
    }];
}

+ (PYOption *)eventRiver2Option {
    // 数据量太大， 暂时放弃
    return nil;
}

@end
