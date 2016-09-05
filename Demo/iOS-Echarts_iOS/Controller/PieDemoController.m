//
//  PieDemoController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PieDemoController.h"
#import "PYEchartsView.h"

typedef NS_ENUM(NSInteger, PieDemoTypeBtnTag) {
    PieDemoTypeBtnTagBasicPie = 30000,
    PieDemoTypeBtnTagDoughnut = 30001,
    PieDemoTypeBtnTagNestedPie = 30002,
    PieDemoTypeBtnTagNightingalesRoseDiagram = 30003,
    PieDemoTypeBtnTagDoughnut2 = 30004,
    PieDemoTypeBtnTagDoughnut3 = 30005,
    PieDemoTypeBtnTagTimeline = 30006,
    PieDemoTypeBtnTagLasagna = 30007,
    PieDemoTypeBtnTagPie = 30008
};

@interface PieDemoController ()

@property (nonatomic, weak) IBOutlet PYEchartsView *kEchartView;

@end

@implementation PieDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom function
/**
 *  初始化
 */
- (void)initAll {
    self.title = @"饼图";
    PYOption *option = [PYPieDemoOptions standardPieOption];
    [_kEchartView setOption:option];
    [_kEchartView loadEcharts];
}

/**
 *  按钮的点击事件
 *
 *  @param sender <#sender description#>
 */
- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case PieDemoTypeBtnTagBasicPie:
            option = [PYPieDemoOptions standardPieOption];
            break;
        case PieDemoTypeBtnTagDoughnut:
            option = [PYPieDemoOptions doughnutPieOption];
            break;
        case PieDemoTypeBtnTagNestedPie:
            option = [PYPieDemoOptions nestedPieOption];
            break;
        case PieDemoTypeBtnTagNightingalesRoseDiagram:
            option = [PYPieDemoOptions nightingalesRoseDiagramPieOption];
            break;
        case PieDemoTypeBtnTagDoughnut2:
            option = [PYPieDemoOptions doughnut2PieOption];
            break;
        case PieDemoTypeBtnTagDoughnut3:
            option = [PYPieDemoOptions doughnut3PieOption];
            break;
        case PieDemoTypeBtnTagTimeline:
            option = [PYPieDemoOptions timelinePieOption];
            break;
        case PieDemoTypeBtnTagLasagna:
            break;
        case PieDemoTypeBtnTagPie:
            option = [PYPieDemoOptions pieDemoOption];
//            [self showPieDemo];
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

//缺少千层饼的Demo

/**
 *  饼图
 */
- (void)showPieDemo {
    NSString *pieJson = @"{\"tooltip\":{\"show\":true,\"formatter\":\"{a} <br/>{b} : {c} ({d}%)\"},\"legend\":{\"orient\":\"vertical\",\"x\":\"left\",\"data\":[\"直达\",\"营销广告\",\"搜索引擎\",\"邮件营销\",\"联盟广告\",\"视频广告\",\"百度\",\"谷歌\",\"必应\",\"其他\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"series\":[{\"name\":\"访问来源\",\"type\":\"pie\",\"center\":[\"35%\",100],\"radius\":15,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"inner\",\"formatter\":\"(function (params) {return (params.percent - 0).toFixed(0) + \'%\'})\"},\"labelLine\":{\"show\":false}},\"emphasis\":{\"label\":{\"show\":true,\"formatter\":\"{b}\\n{d}%\"}}},\"data\":[{\"value\":335,\"name\":\"直达\"},{\"value\":679,\"name\":\"营销广告\"},{\"value\":1548,\"name\":\"搜索引擎\"}]},{\"name\":\"访问来源\",\"type\":\"pie\",\"center\":[\"35%\",100],\"radius\":[30,50],\"data\":[{\"value\":335,\"name\":\"直达\"},{\"value\":310,\"name\":\"邮件营销\"},{\"value\":234,\"name\":\"联盟广告\"},{\"value\":135,\"name\":\"视频广告\"},{\"value\":1048,\"name\":\"百度\",\"itemStyle\":{\"normal\":{\"color\":\"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getRadialGradient(300, 200, 110, 300, 200, 140,[[0, \'rgba(255,255,0,1)\'],[1, \'rgba(30,144,250,1)\']])})()\",\"label\":{\"textStyle\":{\"color\":\"rgba(30,144,255,0.8)\",\"align\":\"center\",\"baseline\":\"middle\",\"fontFamily\":\"微软雅黑\",\"fontSize\":30,\"fontWeight\":\"bolder\"}},\"labelLine\":{\"length\":40,\"lineStyle\":{\"color\":\"#f0f\",\"width\":3,\"type\":\"dotted\"}}}}},{\"value\":251,\"name\":\"谷歌\"},{\"value\":102,\"name\":\"必应\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":false},\"labelLine\":{\"show\":false}},\"emphasis\":{\"label\":{\"show\":true},\"labelLine\":{\"show\":true,\"length\":50}}}},{\"value\":147,\"name\":\"其他\"}]},{\"name\":\"访问来源\",\"type\":\"pie\",\"clockWise\":true,\"startAngle\":135,\"center\":[\"75%\",100],\"radius\":[30,50],\"itemStyle\":{\"normal\":{\"label\":{\"show\":false},\"labelLine\":{\"show\":false}},\"emphasis\":{\"color\":\"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getRadialGradient(650, 200, 80, 650, 200, 120,[[0, \'rgba(255,255,0,1)\'],[1, \'rgba(255,0,0,1)\']])})()\",\"label\":{\"show\":true,\"position\":\"center\",\"formatter\":\"{d}%\",\"textStyle\":{\"color\":\"red\",\"fontSize\":\"30\",\"fontFamily\":\"微软雅黑\",\"fontWeight\":\"bold\"}}}},\"data\":[{\"value\":335,\"name\":\"直达\"},{\"value\":310,\"name\":\"邮件营销\"},{\"value\":234,\"name\":\"联盟广告\"},{\"value\":135,\"name\":\"视频广告\"},{\"value\":1548,\"name\":\"搜索引擎\"}],\"markPoint\":{\"symbol\":\"star\",\"data\":[{\"name\":\"最大\",\"value\":1548,\"x\":\"80%\",\"y\":40,\"symbolSize\":14}]}}]}";
    NSData *jsonData = [pieJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
    
}

@end
