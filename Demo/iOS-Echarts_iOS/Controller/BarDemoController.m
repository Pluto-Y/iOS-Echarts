//
//  BarDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BarDemoController.h"

typedef NS_ENUM(NSInteger, BarDemoTypeTag) {
    BarDemoTypeTagBasicColumn = 20000,
    BarDemoTypeTagStackedColumn = 20001,
    BarDemoTypeTagTermometer = 20002,
    BarDemoTypeTagCompositiveWaterfall = 20003,
    BarDemoTypeTagChangeWaterfall = 20004,
    BarDemoTypeTagStackedAndClusteredColumn = 20005,
    BarDemoTypeTagBasicBar = 20006,
    BarDemoTypeTagStackedBar = 20007,
    BarDemoTypeTagStackedFloatingBar = 20008,
    BarDemoTypeTagTornado = 20009,
    BarDemoTypeTagTornado2 = 20010,
    BarDemoTypeTagIrrgularBar = 20011,
    BarDemoTypeTagTimeline = 20012,
    BarDemoTypeTagRainbowBar = 20013,
    BarDemoTypeTagMultipleSreiesRainbowBar = 20014,
    BarDemoTypeTagColumn = 20015
};

@interface BarDemoController ()

@end

@implementation BarDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
- (void)initAll {
    self.title = @"柱状图";
    PYOption *option = [PYBarDemoOptions basicColumnOption];
    [_kEchartView setOption:option];
    [_kEchartView loadEcharts];
}


- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case BarDemoTypeTagBasicColumn:
            option = [PYBarDemoOptions basicColumnOption];
            break;
        case BarDemoTypeTagStackedColumn:
            option = [PYBarDemoOptions stackedColumnOption];
            break;
        case BarDemoTypeTagTermometer:
            option = [PYBarDemoOptions termometerOption];
            break;
        case BarDemoTypeTagCompositiveWaterfall:
            option = [PYBarDemoOptions compositiveWaterfallOption];
            break;
        case BarDemoTypeTagChangeWaterfall:
            option = [PYBarDemoOptions changeWaterfallOption];
            break;
        case BarDemoTypeTagStackedAndClusteredColumn:
            option = [PYBarDemoOptions stackedAndClusteredColumnOption];
            break;
        case BarDemoTypeTagBasicBar:
            option = [PYBarDemoOptions basicBarOption];
            break;
        case BarDemoTypeTagStackedBar:
            option = [PYBarDemoOptions stackedBarOption];
            break;
        case BarDemoTypeTagStackedFloatingBar:
            [self showStackedFloatingBarDemo];
            break;
        case BarDemoTypeTagTornado:
            [self showTornadoDemo];
            break;
        case BarDemoTypeTagTornado2:
            [self showTornado2Demo];
            break;
        case BarDemoTypeTagIrrgularBar:
            [self showIrrgularBarDemo];
            break;
        case BarDemoTypeTagTimeline:
            break;
        case BarDemoTypeTagRainbowBar:
            break;
        case BarDemoTypeTagMultipleSreiesRainbowBar:
            break;
        case BarDemoTypeTagColumn:
            break;
        default:
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

/**
 *  多维条形图
 */
- (void)showStackedFloatingBarDemo {
    NSString *placeHoldStyleJson = @"{\"normal\":{\"barBorderColor\":\"rgba(0,0,0,0)\",\"color\":\"rgba(0,0,0,0)\"},\"emphasis\":{\"barBorderColor\":\"rgba(0,0,0,0)\",\"color\":\"rgba(0,0,0,0)\"}}";
    NSData *placeHoldStyleJsonData = [placeHoldStyleJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *placeHoldStyleJsonDic = [NSJSONSerialization JSONObjectWithData:placeHoldStyleJsonData options:NSJSONReadingAllowFragments error:nil];
    PYItemStyle *placeHoldStyle = [RMMapper objectWithClass:[PYItemStyle class] fromDictionary:placeHoldStyleJsonDic];
    NSString *dataStyleJson = @"{\"normal\":{\"label\":{\"show\":true,\"position\":\"insideLeft\",\"formatter\":\"{c}%\"}}}";
    NSData *dataStyleJsonData = [dataStyleJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dataStyleJsonDic = [NSJSONSerialization JSONObjectWithData:dataStyleJsonData options:NSJSONReadingAllowFragments error:nil];
    PYItemStyle *dataStyle = [RMMapper objectWithClass:[PYItemStyle class] fromDictionary:dataStyleJsonDic];
    NSString *stackedFloatingBarJson = @"{\"title\":{\"text\":\"多维条形图\",\"subtext\":\"From ExcelHome\",\"sublink\":\"http://e.weibo.com/1341556070/AiEscco0H\"},\"tooltip\":{\"trigger\":\"axis\",\"axisPointer\":{\"type\":\"shadow\"},\"formatter\":\"{b}<br/>{a0}:{c0}%<br/>{a2}:{c2}%<br/>{a4}:{c4}%<br/>{a6}:{c6}%\"},\"legend\":{\"y\":55,\"itemGap\":\"(funtion(){return document.getElementById(\'main\').offsetWidth / 8;})()\",\"data\":[\"GML\",\"PYP\",\"WTC\",\"ZTW\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"grid\":{\"x\":30,\"x2\":30,\"y\":80,\"y2\":30},\"xAxis\":[{\"type\":\"value\",\"position\":\"top\",\"splitLine\":{\"show\":false},\"axisLabel\":{\"show\":false}}],\"yAxis\":[{\"type\":\"category\",\"splitLine\":{\"show\":false},\"data\":[\"重庆\",\"天津\",\"上海\",\"北京\"]}],\"series\":[{\"name\":\"GML\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[38,50,33,72]},{\"name\":\"GML\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[62,50,67,28]},{\"name\":\"PYP\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[61,41,42,30]},{\"name\":\"PYP\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[39,59,58,70]},{\"name\":\"WTC\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[37,35,44,60]},{\"name\":\"WTC\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[63,65,56,40]},{\"name\":\"ZTW\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[71,50,31,39]},{\"name\":\"ZTW\",\"type\":\"bar\",\"stack\":\"总量\",\"data\":[29,50,69,61]}]}\n";
    NSData *jsonData = [stackedFloatingBarJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    option.series = [RMMapper mutableArrayOfClass:[PYCartesianSeries class] fromArrayOfDictionary:option.series];
    int i = 1;
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    for (PYSeries *series in option.series) {
        if (i++ % 2 == 1) {
            series.itemStyle = dataStyle;
        } else {
            series.itemStyle = placeHoldStyle;
        }
        [serieses addObject:series];
    }
    option.series = serieses;
    [_kEchartView setOption:option];
}

/**
 *  旋风条形图
 */
- (void)showTornadoDemo {
    NSString *tornadoJson = @"{\"grid\":{\"x\":30,\"x2\":45},\"tooltip\":{\"trigger\":\"axis\",\"axisPointer\":{\"type\":\"shadow\"}},\"legend\":{\"data\":[\"利润\",\"支出\",\"收入\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"line\",\"bar\"]},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"xAxis\":[{\"type\":\"value\"}],\"yAxis\":[{\"type\":\"category\",\"axisTick\":{\"show\":false},\"data\":[\"周一\",\"周二\",\"周三\",\"周四\",\"周五\",\"周六\",\"周日\"]}],\"series\":[{\"name\":\"利润\",\"type\":\"bar\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true,\"position\":\"inside\"}}},\"data\":[200,170,240,244,200,220,210]},{\"name\":\"收入\",\"type\":\"bar\",\"stack\":\"总量\",\"barWidth\":5,\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}}},\"data\":[320,302,341,374,390,450,420]},{\"name\":\"支出\",\"type\":\"bar\",\"stack\":\"总量\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true,\"position\":\"left\"}}},\"data\":[-120,-132,-101,-134,-190,-230,-210]}]}";
    NSData *jsonData = [tornadoJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

/**
 *  旋风条形图2
 */
- (void)showTornado2Demo {
    NSString *tornadoJson = @"{\"title\":{\"text\":\"交错正负轴标签\",\"subtext\":\"From ExcelHome\",\"sublink\":\"http://e.weibo.com/1341556070/AjwF2AgQm\"},\"tooltip\":{\"trigger\":\"axis\",\"axisPointer\":{\"type\":\"shadow\"}},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"line\",\"bar\"]},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"grid\":{\"x\":30,\"x2\":30,\"y\":80,\"y2\":30},\"xAxis\":[{\"type\":\"value\",\"position\":\"top\",\"splitLine\":{\"lineStyle\":{\"type\":\"dashed\"}}}],\"yAxis\":[{\"type\":\"category\",\"axisLine\":{\"show\":false},\"axisLabel\":{\"show\":false},\"axisTick\":{\"show\":false},\"splitLine\":{\"show\":false},\"data\":[\"ten\",\"nine\",\"eight\",\"seven\",\"six\",\"five\",\"four\",\"three\",\"two\",\"one\"]}],\"series\":[{\"name\":\"生活费\",\"type\":\"bar\",\"stack\":\"总量\",\"itemStyle\":{\"normal\":{\"color\":\"orange\",\"borderRadius\":5,\"label\":{\"show\":true,\"position\":\"left\",\"formatter\":\"{b}\"}}},\"data\":[{\"value\":-0.07,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"right\"}}}},{\"value\":-0.09,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"right\"}}}},0.2,0.44,{\"value\":-0.23,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"right\"}}}},0.08,{\"value\":-0.17,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"right\"}}}},0.47,{\"value\":-0.36,\"itemStyle\":{\"normal\":{\"label\":{\"position\":\"right\"}}}},0.18]}]}";
    NSData *jsonData = [tornadoJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

/**
 *  不等距柱形图
 */
- (void)showIrrgularBarDemo {
    NSString *irrgularBarJson = @"{\"grid\":{\"x\":30,\"x2\":45},\"title\":{\"text\":\"双数值柱形图\",\"subtext\":\"纯属虚构\"},\"tooltip\":{\"trigger\":\"axis\",\"axisPointer\":{\"show\":true,\"type\":\"cross\",\"lineStyle\":{\"type\":\"dashed\",\"width\":1}}, \"formatter\" : \"(function (params) {return params.seriesName + ' : [ '+ params.value[0] + ', ' + params.value[1] + ' ]';})\"},\"legend\":{\"data\":[\"数据1\",\"数据2\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"line\",\"bar\"]},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"xAxis\":[{\"type\":\"value\"}],\"yAxis\":[{\"type\":\"value\",\"axisLine\":{\"lineStyle\":{\"color\":\"#dc143c\"}}}],\"series\":[{\"name\":\"数据1\",\"type\":\"bar\",\"data\":[[1.5,10],[5,7],[8,8],[12,6],[11,12],[16,9],[14,6],[17,4],[19,9]],\"markPoint\":{\"data\":[{\"type\":\"max\",\"name\":\"最大值\",\"symbol\":\"emptyCircle\",\"itemStyle\":{\"normal\":{\"color\":\"#dc143c\",\"label\":{\"position\":\"top\"}}}},{\"type\":\"min\",\"name\":\"最小值\",\"symbol\":\"emptyCircle\",\"itemStyle\":{\"normal\":{\"color\":\"#dc143c\",\"label\":{\"position\":\"bottom\"}}}},{\"type\":\"max\",\"name\":\"最大值\",\"valueIndex\":0,\"symbol\":\"emptyCircle\",\"itemStyle\":{\"normal\":{\"color\":\"#1e90ff\",\"label\":{\"position\":\"right\"}}}},{\"type\":\"min\",\"name\":\"最小值\",\"valueIndex\":0,\"symbol\":\"emptyCircle\",\"itemStyle\":{\"normal\":{\"color\":\"#1e90ff\",\"label\":{\"position\":\"left\"}}}}]},\"markLine\":{\"data\":[{\"type\":\"max\",\"name\":\"最大值\",\"itemStyle\":{\"normal\":{\"color\":\"#dc143c\"}}},{\"type\":\"min\",\"name\":\"最小值\",\"itemStyle\":{\"normal\":{\"color\":\"#dc143c\"}}},{\"type\":\"average\",\"name\":\"平均值\",\"itemStyle\":{\"normal\":{\"color\":\"#dc143c\"}}},{\"type\":\"max\",\"name\":\"最大值\",\"valueIndex\":0,\"itemStyle\":{\"normal\":{\"color\":\"#1e90ff\"}}},{\"type\":\"min\",\"name\":\"最小值\",\"valueIndex\":0,\"itemStyle\":{\"normal\":{\"color\":\"#1e90ff\"}}},{\"type\":\"average\",\"name\":\"平均值\",\"valueIndex\":0,\"itemStyle\":{\"normal\":{\"color\":\"#1e90ff\"}}}]}},{\"name\":\"数据2\",\"type\":\"bar\",\"barHeight\":10,\"data\":[[1,2],[2,3],[4,4],[7,5],[11,11],[18,15]]}]}";
    NSData *jsonData = [irrgularBarJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

// 缺少搭配时间轴的测试
//- (void)showDemo {
//    NSString *Json = @"";
//}

// 缺少彩色柱形图
//- (void)showDemo {
//    NSString *Json = @"";
//}
@end
