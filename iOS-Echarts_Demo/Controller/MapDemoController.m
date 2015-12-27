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
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
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
    NSString *json = @"{\"title\":{\"text\":\"iphone销量\",\"subtext\":\"纯属虚构\",\"x\":\"center\"},\"tooltip\":{\"trigger\":\"item\"},\"legend\":{\"orient\":\"vertical\",\"x\":\"left\",\"data\":[\"iphone3\",\"iphone4\",\"iphone5\"]},\"dataRange\":{\"min\":0,\"max\":2500,\"x\":\"left\",\"y\":\"bottom\",\"text\":[\"高\",\"低\"],\"calculable\":true},\"toolbox\":{\"show\":true,\"orient\":\"vertical\",\"x\":\"right\",\"y\":\"center\",\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"roamController\":{\"show\":true,\"x\":\"right\",\"mapTypeControl\":{\"china\":true}},\"series\":[{\"name\":\"iphone3\",\"type\":\"map\",\"mapType\":\"china\",\"roam\":false,\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":733},{\"name\":\"天津\",\"value\":221},{\"name\":\"上海\",\"value\":531},{\"name\":\"重庆\",\"value\":525},{\"name\":\"河北\",\"value\":358},{\"name\":\"河南\",\"value\":190},{\"name\":\"云南\",\"value\":244},{\"name\":\"辽宁\",\"value\":35},{\"name\":\"黑龙江\",\"value\":930},{\"name\":\"湖南\",\"value\":926},{\"name\":\"安徽\",\"value\":642},{\"name\":\"山东\",\"value\":659},{\"name\":\"新疆\",\"value\":632},{\"name\":\"江苏\",\"value\":131},{\"name\":\"浙江\",\"value\":341},{\"name\":\"江西\",\"value\":428},{\"name\":\"湖北\",\"value\":97},{\"name\":\"广西\",\"value\":528},{\"name\":\"甘肃\",\"value\":262},{\"name\":\"山西\",\"value\":8},{\"name\":\"内蒙古\",\"value\":661},{\"name\":\"陕西\",\"value\":550},{\"name\":\"吉林\",\"value\":636},{\"name\":\"福建\",\"value\":863},{\"name\":\"贵州\",\"value\":406},{\"name\":\"广东\",\"value\":52},{\"name\":\"青海\",\"value\":4},{\"name\":\"西藏\",\"value\":518},{\"name\":\"四川\",\"value\":738},{\"name\":\"宁夏\",\"value\":454},{\"name\":\"海南\",\"value\":353},{\"name\":\"台湾\",\"value\":7},{\"name\":\"香港\",\"value\":550},{\"name\":\"澳门\",\"value\":7}]},{\"name\":\"iphone4\",\"type\":\"map\",\"mapType\":\"china\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":927},{\"name\":\"天津\",\"value\":699},{\"name\":\"上海\",\"value\":265},{\"name\":\"重庆\",\"value\":581},{\"name\":\"河北\",\"value\":113},{\"name\":\"安徽\",\"value\":446},{\"name\":\"新疆\",\"value\":597},{\"name\":\"浙江\",\"value\":533},{\"name\":\"江西\",\"value\":87},{\"name\":\"山西\",\"value\":308},{\"name\":\"内蒙古\",\"value\":986},{\"name\":\"吉林\",\"value\":930},{\"name\":\"福建\",\"value\":39},{\"name\":\"广东\",\"value\":129},{\"name\":\"西藏\",\"value\":243},{\"name\":\"四川\",\"value\":83},{\"name\":\"宁夏\",\"value\":645},{\"name\":\"香港\",\"value\":476},{\"name\":\"澳门\",\"value\":245}]},{\"name\":\"iphone5\",\"type\":\"map\",\"mapType\":\"china\",\"itemStyle\":{\"normal\":{\"label\":{\"show\":true}},\"emphasis\":{\"label\":{\"show\":true}}},\"data\":[{\"name\":\"北京\",\"value\":96},{\"name\":\"天津\",\"value\":123},{\"name\":\"上海\",\"value\":990},{\"name\":\"广东\",\"value\":156},{\"name\":\"台湾\",\"value\":333},{\"name\":\"香港\",\"value\":999},{\"name\":\"澳门\",\"value\":410}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_yEchartView setOption:option];
}

@end
