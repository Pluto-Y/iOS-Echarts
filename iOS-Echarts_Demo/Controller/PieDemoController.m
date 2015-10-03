//
//  PieDemoController.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PieDemoController.h"
#import "PYEchartsView.h"

typedef enum {
    PieDemoTypeBtnTagBasicPie = 30000,
    PieDemoTypeBtnTagDoughnut = 30001,
    PieDemoTypeBtnTagNestedPie = 30002,
    PieDemoTypeBtnTagNightingalesRoseDiagram = 30003,
    PieDemoTypeBtnTagDoughnut2 = 30004,
    PieDemoTypeBtnTagDoughnut3 = 30005,
    PieDemoTypeBtnTagTimeline = 30006,
    PieDemoTypeBtnTagLasagna = 30007,
    PieDemoTypeBtnTagPie = 30008
} PieDemoTypeBtnTag;

@interface PieDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *kEchartView;

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
-(void)initAll {
    
}

/**
 *  按钮的点击时间
 *
 *  @param sender <#sender description#>
 */
- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case PieDemoTypeBtnTagBasicPie:
            [self showBasicPieDemo];
            break;
        case PieDemoTypeBtnTagDoughnut:
            break;
        case PieDemoTypeBtnTagNestedPie:
            break;
        case PieDemoTypeBtnTagNightingalesRoseDiagram:
            break;
        case PieDemoTypeBtnTagDoughnut2:
            break;
        case PieDemoTypeBtnTagDoughnut3:
            break;
        case PieDemoTypeBtnTagTimeline:
            break;
        case PieDemoTypeBtnTagLasagna:
            break;
        case PieDemoTypeBtnTagPie:
            break;
    }
    [_kEchartView loadEcharts];
}

/**
 *  标准饼图
 */
-(void)showBasicPieDemo {
    NSString *basicPieJson = @"{\"title\":{\"text\":\"某站点用户访问来源\",\"subtext\":\"纯属虚构\",\"x\":\"center\"},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"{a} <br/>{b} : {c} ({d}%)\"},\"legend\":{\"orient\":\"vertical\",\"x\":\"left\",\"data\":[\"直接访问\",\"邮件营销\",\"联盟广告\",\"视频广告\",\"搜索引擎\"]},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"pie\",\"funnel\"],\"option\":{\"funnel\":{\"x\":\"25%\",\"width\":\"50%\",\"funnelAlign\":\"left\",\"max\":1548}}},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"calculable\":true,\"series\":[{\"name\":\"访问来源\",\"type\":\"pie\",\"radius\":\"55%\",\"center\":[\"50%\",\"60%\"],\"data\":[{\"value\":335,\"name\":\"直接访问\"},{\"value\":310,\"name\":\"邮件营销\"},{\"value\":234,\"name\":\"联盟广告\"},{\"value\":135,\"name\":\"视频广告\"},{\"value\":1548,\"name\":\"搜索引擎\"}]}]}";
    NSData *jsonData = [basicPieJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}


@end
