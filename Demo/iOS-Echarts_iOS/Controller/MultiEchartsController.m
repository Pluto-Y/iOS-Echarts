//
//  PYMutilEchartsController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/28/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "MultiEchartsController.h"
#import "EchartsViewCell.h"

static NSString *const tableViewIdentifier = @"EchartsViewCell";

@interface MultiEchartsController ()<UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation MultiEchartsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"多图表";
    [_tableView registerNib:[UINib nibWithNibName:tableViewIdentifier bundle:nil] forCellReuseIdentifier:tableViewIdentifier];
}

#pragma mark UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EchartsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewIdentifier forIndexPath:indexPath];
    PYOption *option;
    if (indexPath.row == 0) {
        option = [self obtainWormholeOption];
    } else {
        option = [self obtainStandardLineOption];
    }
    [cell.echartView setOption:option];
    [cell.echartView loadEcharts];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

/**
 *  标准折线图
 */
- (PYOption *)obtainStandardLineOption {
    PYOption *option = [[PYOption alloc] init];
    PYTitle *title = [[PYTitle alloc] init];
    title.text = @"未来一周气温变化";
    title.subtext = @"纯属虚构";
    option.title = title;
    PYTooltip *tooltip = [[PYTooltip alloc] init];
    tooltip.trigger = @"axis";
    option.tooltip = tooltip;
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    PYLegend *legend = [[PYLegend alloc] init];
    legend.data = @[@"最高温度",@"最低温度"];
    option.legend = legend;
    PYToolbox *toolbox = [[PYToolbox alloc] init];
    toolbox.show = YES;
    toolbox.x = @"right";
    toolbox.y = @"top";
    toolbox.z = @(100);
    toolbox.feature.mark.show = YES;
    toolbox.feature.dataView.show = YES;
    toolbox.feature.dataView.readOnly = NO;
    toolbox.feature.magicType.show = YES;
    toolbox.feature.magicType.type = @[@"line", @"bar"];
    toolbox.feature.restore.show = YES;
    option.toolbox = toolbox;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis  alloc] init];
    xAxis.type = @"category";
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    yAxis.axisLabel.formatter = @"{value} ℃";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    PYSeries *series1 = [[PYSeries alloc] init];
    series1.name = @"最高温度";
    series1.type = @"line";
    series1.data = @[@(11),@(11),@(15),@(13),@(12),@(13),@(10)];
    PYMarkPoint *markPoint = [[PYMarkPoint alloc] init];
    markPoint.data = [[NSMutableArray alloc] initWithArray:@[@{@"type" : @"max", @"name": @"最大值"},@{@"type" : @"min", @"name": @"最小值"}]];
    series1.markPoint = markPoint;
    PYMarkLine *markLine = [[PYMarkLine alloc] init];
    markLine.data = [[NSMutableArray alloc] initWithArray:@[@{@"type" : @"average", @"name": @"平均值"}]];
    series1.markLine = markLine;
    PYSeries *series2 = [[PYSeries alloc] init];
    series2.name = @"最低温度";
    series2.type = @"line";
    series2.data = @[@(1),@(-2),@(2),@(5),@(3),@(2),@(0)];
    PYMarkPoint *markPoint2 = [[PYMarkPoint alloc] init];
    markPoint2.data = [[NSMutableArray alloc] initWithArray:@[@{@"value" : @(2), @"name": @"周最低", @"xAxis":@(1), @"yAxis" : @(-1.5)}]];
    series2.markPoint = markPoint2;
    PYMarkLine *markLine2 = [[PYMarkLine alloc] init];
    markLine2.data = [[NSMutableArray alloc] initWithArray:@[@{@"type" : @"average", @"name": @"平均值"}]];
    series2.markLine = markLine2;
    option.series = [[NSMutableArray alloc] initWithObjects:series1, series2, nil];
    return option;
}

/**
 *  虫洞
 */
- (PYOption *)obtainWormholeOption {
    NSString *json = @"{\"color\":\"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getStepColors(\'yellow\', \'red\', 28);})()\",\"title\":{\"text\":\"浏览器占比变化\",\"subtext\":\"纯属虚构\",\"x\":\"right\",\"y\":\"bottom\"},\"tooltip\":{\"trigger\":\"item\",\"backgroundColor\":\"rgba(0,0,250,0.2)\"},\"legend\":{\"show\":false,\"data\":\"function (){var list = [];for (var i = 1; i <=28; i++) {list.push(i + 2000);}return list;}()\"},\"toolbox\":{\"show\":true,\"orient\":\"vertical\",\"y\":\"center\",\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"polar\":[{\"indicator\":[{\"text\":\"IE8-\",\"max\":400},{\"text\":\"IE9+\",\"max\":400},{\"text\":\"Safari\",\"max\":400},{\"text\":\"Firefox\",\"max\":400},{\"text\":\"Chrome\",\"max\":400}],\"center\":[\"50%\",120],\"radius\":50}],\"calculable\":false,\"series\":\"(function (){var series = [];for (var i = 1; i <= 28; i++) {series.push({name:\'浏览器（数据纯属虚构）\',type:\'radar\',symbol:\'none\',itemStyle: {normal: {lineStyle: {width:1}},emphasis : {areaStyle: {color:\'rgba(0,250,0,0.3)\'}}},data:[{value:[(40 - i) * 10,(38 - i) * 4 + 60,i * 5 + 10,i * 9,i * i /2],name:i + 2000}]})} return series;})()\"}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    return option;
}


@end
