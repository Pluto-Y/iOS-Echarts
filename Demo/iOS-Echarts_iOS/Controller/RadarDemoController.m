//
//  RadarDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//
#import "RadarDemoController.h"

typedef NS_ENUM(NSInteger, RadarDemoTypeTag) {
    RadarDemoTypeTagBasicRadar          = 40001,
    RadarDemoTypeTagBasicFilledRadar    = 40002,
    RadarDemoTypeTagMutipleRadars       = 40003,
    RadarDemoTypeTagWormhole            = 40004,
    RadarDemoTypeTagRadar               = 40005
};

@interface RadarDemoController ()

@end

@implementation RadarDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"雷达图";
    [self showBasicRadarDemo];
    [_kEchartView loadEcharts];
}

- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case RadarDemoTypeTagBasicRadar:
            [self showBasicRadarDemo];
            break;
        case RadarDemoTypeTagBasicFilledRadar:
            [self showBasicFilledRadarDemo];
            break;
        case RadarDemoTypeTagMutipleRadars:
            [self showMutipleRadarsDemo];
            break;
        case RadarDemoTypeTagWormhole:
            [self showWormholeDemo];
            break;
        case RadarDemoTypeTagRadar:
            [self showRadarDemo];
            break;
    }
    [_kEchartView loadEcharts];
}

/**
 *  标准雷达图
 */
- (void)showBasicRadarDemo {
    PYOption *option = [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.calculableEqual(YES).titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"预算 vs 开销（Budget vs spending）").subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical).xEqual(PYPositionRight).yEqual(PYPositionBottom).dataEqual(@[@"预算分配（Allocated Budget）",@"实际开销（Actual Spending）"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES).featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addPolar([PYPolar initPYPolarWithBlock:^(PYPolar *polar) {
            polar.indicatorEqual([[NSMutableArray alloc] initWithArray:@[
                                                                         @{ @"text": @"销售（sales）", @"max": @6000},
                                                                         @{ @"text": @"管理（Administration）", @"max": @16000},
                                                                         @{ @"text": @"信息技术（Information Techology）", @"max": @30000},
                                                                         @{ @"text": @"客服（Customer Support）", @"max": @38000},
                                                                         @{ @"text": @"研发（Development）", @"max": @52000},
                                                                         @{ @"text": @"市场（Marketing）", @"max": @25000}
                                                                         ]]);
        }])
        .addSeries([PYRadarSeries initPYRadarSeriesWithBlock:^(PYRadarSeries *series) {
            series.addData(@{
                             @"value" : @[@4300, @10000, @28000, @35000, @50000, @19000],
                             @"name" : @"预算分配（Allocated Budget）"
                             })
            .addData(@{
                       @"value" : @[@5000, @14000, @28000, @31000, @42000, @21000],
                       @"name" : @"实际开销（Actual Spending）"
                       })
            .nameEqual(@"预算 vs 开销（Budget vs spending）")
            .typeEqual(PYSeriesTypeRadar);
        }]);
    }];
    [_kEchartView setOption:option];
//    NSString *json = @"{\"title\":{\"text\":\"预算 vs 开销（Budget vs spending）\",\"subtext\":\"纯属虚构\"},\"tooltip\":{\"trigger\":\"axis\"},\"legend\":{\"orient\":\"vertical\",\"x\":\"right\",\"y\":\"bottom\",\"data\":[\"预算分配（Allocated Budget）\",\"实际开销（Actual Spending）\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"polar\":[{\"radius\":\"50%\",\"indicator\":[{\"text\":\"销售（sales）\",\"max\":6000},{\"text\":\"管理（Admin）\",\"max\":16000},{\"text\":\"信息技术（Infor Tec）\",\"max\":30000},{\"text\":\"客服（Customer Support）\",\"max\":38000},{\"text\":\"研发（Development）\",\"max\":52000},{\"text\":\"市场（Marketing）\",\"max\":25000}]}],\"calculable\":true,\"series\":[{\"name\":\"预算 vs 开销（Budget vs spending）\",\"type\":\"radar\",\"data\":[{\"value\":[4300,10000,28000,35000,50000,19000],\"name\":\"预算分配（Allocated Budget）\"},{\"value\":[5000,14000,28000,31000,42000,21000],\"name\":\"实际开销（Actual Spending）\"}]}]}";
//    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
//    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
//    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
//    [_kEchartView setOption:option];
}

/**
 *  标准填充雷达图
 */
- (void)showBasicFilledRadarDemo {
    NSString *json = @"{\"title\":{\"text\":\"罗纳尔多 vs 舍普琴科\",\"subtext\":\"完全实况球员数据\"},\"tooltip\":{\"trigger\":\"axis\"},\"legend\":{\"x\":\"center\",\"data\":[\"罗纳尔多\",\"舍普琴科\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"polar\":[{\"radius\":\"50%\",\"indicator\":[{\"text\":\"进攻\",\"max\":100},{\"text\":\"防守\",\"max\":100},{\"text\":\"体能\",\"max\":100},{\"text\":\"速度\",\"max\":100},{\"text\":\"力量\",\"max\":100},{\"text\":\"技巧\",\"max\":100}],\"radius\":130}],\"series\":[{\"name\":\"完全实况球员数据\",\"type\":\"radar\",\"itemStyle\":{\"normal\":{\"areaStyle\":{\"type\":\"default\"}}},\"data\":[{\"value\":[97,42,88,94,90,86],\"name\":\"舍普琴科\"},{\"value\":[97,32,74,95,88,92],\"name\":\"罗纳尔多\"}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

/**
 *  多雷达图
 */
- (void)showMutipleRadarsDemo {
    NSString *json = @"{\"title\":{\"text\":\"多雷达图\",\"subtext\":\"纯属虚构\"},\"tooltip\":{\"trigger\":\"axis\"},\"legend\":{\"x\":\"center\",\"data\":[\"某软件\",\"某主食手机\",\"某水果手机\",\"降水量\",\"蒸发量\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"polar\":[{\"indicator\":[{\"text\":\"品牌\",\"max\":100},{\"text\":\"内容\",\"max\":100},{\"text\":\"可用性\",\"max\":100},{\"text\":\"功能\",\"max\":100}],\"center\":[\"18%\",120],\"radius\":35},{\"indicator\":[{\"text\":\"外观\",\"max\":100},{\"text\":\"拍照\",\"max\":100},{\"text\":\"系统\",\"max\":100},{\"text\":\"性能\",\"max\":100},{\"text\":\"屏幕\",\"max\":100}],\"radius\":35},{\"indicator\":\"(function (){var res = [];for (var i = 1; i <= 12; i++) {res.push({text:i+\'月\',max:100});}return res;})()\",\"center\":[\"80%\",120],\"radius\":35}],\"series\":[{\"type\":\"radar\",\"tooltip\":{\"trigger\":\"item\"},\"itemStyle\":{\"normal\":{\"areaStyle\":{\"type\":\"default\"}}},\"data\":[{\"value\":[60,73,85,40],\"name\":\"某软件\"}]},{\"type\":\"radar\",\"polarIndex\":1,\"data\":[{\"value\":[85,90,90,95,95],\"name\":\"某主食手机\"},{\"value\":[95,80,95,90,93],\"name\":\"某水果手机\"}]},{\"type\":\"radar\",\"polarIndex\":2,\"itemStyle\":{\"normal\":{\"areaStyle\":{\"type\":\"default\"}}},\"data\":[{\"name\":\"降水量\",\"value\":[2.6,5.9,9,26.4,28.7,70.7,75.6,82.2,48.7,18.8,6,2.3]},{\"name\":\"蒸发量\",\"value\":[2,4.9,7,23.2,25.6,76.7,35.6,62.2,32.6,20,6.4,3.3]}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

/**
 *  虫洞
 */
- (void)showWormholeDemo {
    NSString *json = @"{\"color\":\"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getStepColors(\'yellow\', \'red\', 28);})()\",\"title\":{\"text\":\"浏览器占比变化\",\"subtext\":\"纯属虚构\",\"x\":\"right\",\"y\":\"bottom\"},\"tooltip\":{\"trigger\":\"item\",\"backgroundColor\":\"rgba(0,0,250,0.2)\"},\"legend\":{\"show\":false,\"data\":\"function (){var list = [];for (var i = 1; i <=28; i++) {list.push(i + 2000);}return list;}()\"},\"toolbox\":{\"show\":true,\"orient\":\"vertical\",\"y\":\"center\",\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"polar\":[{\"indicator\":[{\"text\":\"IE8-\",\"max\":400},{\"text\":\"IE9+\",\"max\":400},{\"text\":\"Safari\",\"max\":400},{\"text\":\"Firefox\",\"max\":400},{\"text\":\"Chrome\",\"max\":400}],\"center\":[\"50%\",120],\"radius\":50}],\"calculable\":false,\"series\":\"(function (){var series = [];for (var i = 1; i <= 28; i++) {series.push({name:\'浏览器（数据纯属虚构）\',type:\'radar\',symbol:\'none\',itemStyle: {normal: {lineStyle: {width:1}},emphasis : {areaStyle: {color:\'rgba(0,250,0,0.3)\'}}},data:[{value:[(40 - i) * 10,(38 - i) * 4 + 60,i * 5 + 10,i * 9,i * i /2],name:i + 2000}]})} return series;})()\"}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

/**
 *  雷达图
 */
- (void)showRadarDemo {
    NSString *json = @"{\"tooltip\":{\"trigger\":\"axis\"},\"legend\":{\"x\":\"left\",\"data\":[\"图一\",\"图二\",\"图三\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"polar\":[{\"indicator\":[{\"text\":\"指标一\"},{\"text\":\"指标二\"},{\"text\":\"指标三\"},{\"text\":\"指标四\"},{\"text\":\"指标五\"}],\"center\":[\"25%\",140],\"radius\":70,\"startAngle\":90,\"splitNumber\":8,\"name\":{\"formatter\":\"【{value}】\",\"textStyle\":{\"color\":\"red\"}},\"scale\":true,\"type\":\"circle\",\"axisLine\":{\"show\":true,\"lineStyle\":{\"color\":\"green\",\"width\":2,\"type\":\"solid\"}},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#ccc\"}},\"splitArea\":{\"show\":true,\"areaStyle\":{\"color\":[\"rgba(250,0,250,0.3)\",\"rgba(0,200,200,0.3)\"]}},\"splitLine\":{\"show\":true,\"lineStyle\":{\"width\":2,\"color\":\"yellow\"}}},{\"indicator\":[{\"text\":\"语文\",\"max\":150},{\"text\":\"数学\",\"max\":150},{\"text\":\"英语\",\"max\":150},{\"text\":\"物理\",\"max\":120},{\"text\":\"化学\",\"max\":108},{\"text\":\"生物\",\"max\":72}],\"center\":[\"75%\",140],\"radius\":70}],\"series\":[{\"name\":\"雷达图\",\"type\":\"radar\",\"itemStyle\":{\"emphasis\":{\"lineStyle\":{\"width\":4}}},\"data\":[{\"value\":[100,8,0.4,-80,2000],\"name\":\"图一\",\"symbol\":\"star5\",\"symbolSize\":4,\"itemStyle\":{\"normal\":{\"lineStyle\":{\"type\":\"dashed\"}}}},{\"value\":[10,3,0.2,-100,1000],\"name\":\"图二\",\"itemStyle\":{\"normal\":{\"areaStyle\":{\"type\":\"default\"}}}},{\"value\":[20,3,0.3,-13.5,3000],\"name\":\"图三\",\"symbol\":\"none\",\"itemStyle\":{\"normal\":{\"lineStyle\":{\"type\":\"dotted\"}}}}]},{\"name\":\"成绩单\",\"type\":\"radar\",\"polarIndex\":1,\"itemStyle\":{\"normal\":{\"areaStyle\":{\"type\":\"default\"}}},\"data\":[{\"value\":[120,118,130,100,99,70],\"name\":\"张三\",\"itemStyle\":{\"normal\":{\"color\":\"(function(params) {var value = params.data;return isNaN(value) ? undefined: (value >= 120 ? \'green\' : \'red\')})\",\"label\":{\"show\":true,\"formatter\":\"(function(params) {return params.value;})\"},\"areaStyle\":{\"color\":\"(function (){var zrColor = require(\'zrender/tool/color\');var x = document.getElementById(\'main\').offsetWidth - 250;return zrColor.getRadialGradient(x, 210, 0, x, 200, 150,[[0, \'rgba(255,255,0,0.3)\'],[1, \'rgba(255,0,0,0.5)\']])})()\"}}}},{\"value\":[90,113,140,30,70,60],\"name\":\"李四\",\"itemStyle\":{\"normal\":{\"lineStyle\":{\"type\":\"dashed\"}}}}],\"markPoint\":{\"symbol\":\"emptyHeart\",\"data\":[{\"name\":\"打酱油的标注\",\"value\":100,\"x\":\"50%\",\"y\":\"15%\",\"symbolSize\":32}]}}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

@end
