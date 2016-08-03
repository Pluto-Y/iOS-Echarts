//
//  ForceDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "ForceDemoController.h"

typedef NS_ENUM(NSInteger, ForceDemoTypeBtnTag) {
    ForceDemoTypeBtnTagSimpleTopology = 10000
};

@interface ForceDemoController ()

@end

@implementation ForceDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void) initAll {
    self.title = @"力导向布局图";
    [self showSimpleTopologyDemo];
    [_kEchartView loadEcharts];
}

- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case ForceDemoTypeBtnTagSimpleTopology:
            [self showSimpleTopologyDemo];
            break;
        default:
            break;
    }
    [_kEchartView loadEcharts];
}

- (void)showSimpleTopologyDemo {
    NSString *basicPieJson = @"{\"title\":{\"text\":\"人物关系：乔布斯\",\"subtext\":\"数据来自人立方\",\"x\":\"right\",\"y\":\"bottom\"},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"{a} : {b}\"},\"toolbox\":{\"show\":true,\"feature\":{\"restore\":{\"show\":true},\"magicType\":{\"show\":true,\"type\":[\"force\",\"chord\"]},\"saveAsImage\":{\"show\":true}}},\"legend\":{\"x\":\"left\",\"data\":[\"家人\",\"朋友\"]},\"series\":[{\"type\":\"force\",\"name\":\"人物关系\",\"ribbonType\":false,\"categories\":[{\"name\":\"人物\"},{\"name\":\"家人\"},{\"name\":\"朋友\"}],\"itemStyle\":{\"normal\":{\"label\":{\"show\":true,\"textStyle\":{\"color\":\"#333\"}},\"nodeStyle\":{\"brushType\":\"both\",\"borderColor\":\"rgba(255,215,0,0.4)\",\"borderWidth\":1},\"linkStyle\":{\"type\":\"curve\"}},\"emphasis\":{\"label\":{\"show\":false},\"nodeStyle\":{},\"linkStyle\":{}}},\"useWorker\":false,\"minRadius\":15,\"maxRadius\":25,\"gravity\":1.1,\"scaling\":1.1,\"roam\":\"move\",\"nodes\":[{\"category\":0,\"name\":\"乔布斯\",\"value\":10,\"label\":\"乔布斯\\n（主要）\"},{\"category\":1,\"name\":\"丽萨-乔布斯\",\"value\":2},{\"category\":1,\"name\":\"保罗-乔布斯\",\"value\":3},{\"category\":1,\"name\":\"克拉拉-乔布斯\",\"value\":3},{\"category\":1,\"name\":\"劳伦-鲍威尔\",\"value\":7},{\"category\":2,\"name\":\"史蒂夫-沃兹尼艾克\",\"value\":5},{\"category\":2,\"name\":\"奥巴马\",\"value\":8},{\"category\":2,\"name\":\"比尔-盖茨\",\"value\":9},{\"category\":2,\"name\":\"乔纳森-艾夫\",\"value\":4},{\"category\":2,\"name\":\"蒂姆-库克\",\"value\":4},{\"category\":2,\"name\":\"龙-韦恩\",\"value\":1}],\"links\":[{\"source\":\"丽萨-乔布斯\",\"target\":\"乔布斯\",\"weight\":1,\"name\":\"女儿\"},{\"source\":\"保罗-乔布斯\",\"target\":\"乔布斯\",\"weight\":2,\"name\":\"父亲\"},{\"source\":\"克拉拉-乔布斯\",\"target\":\"乔布斯\",\"weight\":1,\"name\":\"母亲\"},{\"source\":\"劳伦-鲍威尔\",\"target\":\"乔布斯\",\"weight\":2},{\"source\":\"史蒂夫-沃兹尼艾克\",\"target\":\"乔布斯\",\"weight\":3,\"name\":\"合伙人\"},{\"source\":\"奥巴马\",\"target\":\"乔布斯\",\"weight\":1},{\"source\":\"比尔-盖茨\",\"target\":\"乔布斯\",\"weight\":6,\"name\":\"竞争对手\"},{\"source\":\"乔纳森-艾夫\",\"target\":\"乔布斯\",\"weight\":1,\"name\":\"爱将\"},{\"source\":\"蒂姆-库克\",\"target\":\"乔布斯\",\"weight\":1},{\"source\":\"龙-韦恩\",\"target\":\"乔布斯\",\"weight\":1},{\"source\":\"克拉拉-乔布斯\",\"target\":\"保罗-乔布斯\",\"weight\":1},{\"source\":\"奥巴马\",\"target\":\"保罗-乔布斯\",\"weight\":1},{\"source\":\"奥巴马\",\"target\":\"克拉拉-乔布斯\",\"weight\":1},{\"source\":\"奥巴马\",\"target\":\"劳伦-鲍威尔\",\"weight\":1},{\"source\":\"奥巴马\",\"target\":\"史蒂夫-沃兹尼艾克\",\"weight\":1},{\"source\":\"比尔-盖茨\",\"target\":\"奥巴马\",\"weight\":6},{\"source\":\"比尔-盖茨\",\"target\":\"克拉拉-乔布斯\",\"weight\":1},{\"source\":\"蒂姆-库克\",\"target\":\"奥巴马\",\"weight\":1}]}]}";
    NSData *jsonData = [basicPieJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_kEchartView setOption:option];
}

@end
