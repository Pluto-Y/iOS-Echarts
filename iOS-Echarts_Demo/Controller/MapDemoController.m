//
//  MapDemoController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/12/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "MapDemoController.h"

@interface MapDemoController () {
    NSArray *menuNames;
}

@end

@implementation MapDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - 初始化方法
-(void)initAll {
    self.title = @"地图";
    // 初始化菜单名
    menuNames = @[@"标准地图1",@"标准地图2",@"标准地图3",@"标准地图4",@"标准地图5",@"多地图", @"地图拓展1", @"地图拓展2", @"地图拓展3", @"地图拓展4", @"Echarts拓展1", @"Echarts拓展2", @"地图标线1", @"地图标注1", @"子区域模式", @"地图标线2", @"地图标线3", @"地图标线4", @"地图标线5", @"地图标注2", @"地图拓展1", @"地图拓展2", @"地图拓展3", @"搭配时间轴", @"地图拓展 + 搭配时间轴", @"地图", @"值域控件"];
    
    _yDemoMenusTb.delegate = self;
    _yDemoMenusTb.dataSource = self;
    
    //默认显示第一个地图
    [self showStandardMap1Demo];
    [_yEchartView loadEcharts];
}

#pragma mark - Delegate 
#pragma mark - TableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return menuNames.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"menuCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
    cell.textLabel.text = menuNames[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [self showStandardMap1Demo];
            break;
        case 1:
            [self showStandardMap2Demo];
            break;
        case 2:
            break;
        default:
            break;
    }
    [_yEchartView loadEcharts];
}

#pragma mark - Demo方法
/**
 *  标准地图1
 */
-(void)showStandardMap1Demo {
    NSString *json = @"{\"title\":{\"text\":\"iphone销量\",\"subtext\":\"纯属虚构\",\"x\":\"center\"},\"tooltip\":{\"trigger\":\"item\"},\"legend\":{\"orient\":\"vertical\",\"x\":\"left\",\"data\":[\"iphone3\",\"iphone4\",\"iphone5\"]},\"dataRange\":{\"min\":0,\"max\":2500,\"x\":\"left\",\"y\":\"bottom\",\"text\":[\"高\",\"低\"],\"calculable\":true},\"toolbox\":{\"show\":true,\"orient\":\"vertical\",\"x\":\"right\",\"y\":\"center\",\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"roamController\":{\"show\":false,\"x\":\"right\",\"mapTypeControl\":{\"china\":true}},\"series\":[{\"name\":\"iphone3\",\"type\":\"map\",\"mapType\":\"china\",\"roam\":false,\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"天津\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"上海\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"重庆\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"河北\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"河南\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"云南\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"辽宁\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"黑龙江\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"湖南\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"安徽\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"山东\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"新疆\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"江苏\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"浙江\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"江西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"湖北\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"广西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"甘肃\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"山西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"内蒙古\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"陕西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"吉林\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"福建\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"贵州\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"广东\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"青海\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"西藏\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"四川\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"宁夏\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"海南\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"台湾\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"香港\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"澳门\",\"value\":\"Math.round(Math.random()*1000)\"}]},{\"name\":\"iphone4\",\"type\":\"map\",\"mapType\":\"china\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"天津\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"上海\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"重庆\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"河北\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"安徽\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"新疆\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"浙江\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"江西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"山西\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"内蒙古\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"吉林\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"福建\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"广东\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"西藏\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"四川\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"宁夏\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"香港\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"澳门\",\"value\":\"Math.round(Math.random()*1000)\"}]},{\"name\":\"iphone5\",\"type\":\"map\",\"mapType\":\"china\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"天津\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"上海\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"广东\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"台湾\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"香港\",\"value\":\"Math.round(Math.random()*1000)\"},{\"name\":\"澳门\",\"value\":\"Math.round(Math.random()*1000)\"}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_yEchartView setOption:option];
}

/**
 *  标准地图2
 */
-(void)showStandardMap2Demo {
    NSString *json = @"{\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"{b}\"},\"series\":[{\"name\":\"中国\",\"type\":\"map\",\"mapType\":\"china\",\"selectedMode\":\"multiple\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"广东\",\"selected\":true}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_yEchartView setOption:option];
}

@end
