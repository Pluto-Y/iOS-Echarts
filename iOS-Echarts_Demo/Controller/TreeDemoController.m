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
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"冰桶挑战";
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
    PYTreeSeries *series = [[PYTreeSeries alloc] init];
    series.name = @"树图";
    series.type = PYSeriesTypeTree;
    series.orient = @"horizontal";
    series.rootLocation = @{@"x":@0, @"y":@"60"};
    series.nodePadding = @8;
    series.layerPadding = @200;
    series.hoverable = NO;
    series.roam = @YES;
    series.symbolSize = @6;
    series.itemStyle = [[PYItemStyle alloc] init];
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.color = [PYColor colorWithHexString:@"#4883b4"];
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.position = @"right";
    normal.label.formatter = @"{b}";
    normal.label.textStyle = [[PYTextStyle alloc] init];
    normal.label.textStyle.color = [PYColor colorWithHexString:@"#000"];
    normal.label.textStyle.fontSize = @5;
    normal.lineStyle = [[PYLineStyle alloc] init];
    normal.lineStyle.color = [PYColor colorWithHexString:@"#ccc"];
    normal.lineStyle.type = PYLineStyleTypeCurve;
    series.itemStyle.normal = normal;
    series.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series.itemStyle.emphasis.color = [PYColor colorWithHexString:@"#4883b4"];
    series.itemStyle.emphasis.label = [[PYLabel alloc] init];
    series.itemStyle.emphasis.label.show = NO;
    series.itemStyle.emphasis.borderWidth = @0;
    NSString *jsonDataStr = @"{\"name\":\"冰桶挑战\",\"children\":[{\"name\":\"刘作虎\",\"children\":[{\"name\":\"周鸿祎\",\"children\":[{\"name\":\"马化腾\"},{\"name\":\"徐小平\",\"children\":[{\"name\":\"牛文文\",\"children\":[{\"name\":\"姚劲波\",\"children\":[{\"name\":\"蔡文胜\"},{\"name\":\"蔡明\"},{\"name\":\"汪小菲\"}]},{\"name\":\"杨守彬\",\"children\":[{\"name\":\"所有的创业者\"},{\"name\":\"所有的投资人\"},{\"name\":\"所有的创业服务机构\"}]},{\"name\":\"蒲易\"}]},{\"name\":\"罗振宇\",\"children\":[{\"name\":\"罗辑思维25000名会员\"}]},{\"name\":\"黄西\"}]},{\"name\":\"黄章\"}]},{\"name\":\"罗永浩\"},{\"name\":\"刘江峰\",\"children\":[{\"name\":\"何刚\",\"children\":[{\"name\":\"谢清江\"},{\"name\":\"王翔\"},{\"name\":\"艾伟\"}]},{\"name\":\"王煜磊\"}]}]},{\"name\":\"雷军\",\"children\":[{\"name\":\"刘德华\",\"children\":[{\"name\":\"朗朗\"},{\"name\":\"苏桦伟\"},{\"name\":\"周杰伦\",\"children\":[{\"name\":\"方文山\",\"children\":[{\"name\":\"九把刀\"},{\"name\":\"柯有伦\"}]},{\"name\":\"五月天\",\"children\":[{\"name\":\"谢金燕\",\"children\":[{\"name\":\"赵慧仙\"},{\"name\":\"张菲\",\"children\":[{\"name\":\"小S\"}]},{\"name\":\"郭富城\"}]},{\"name\":\"张震\"},{\"name\":\"金城武\"}]}]}]},{\"name\":\"李彦宏\",\"children\":[{\"name\":\"俞敏洪\"},{\"name\":\"潘石屹\",\"children\":[{\"name\":\"任志强\"}]},{\"name\":\"田亮\",\"children\":[{\"name\":\"王岳伦\"},{\"name\":\"小沈阳\"},{\"name\":\"李小鹏\"}]}]},{\"name\":\"郭台铭\",\"children\":[{\"name\":\"孙正义\",\"children\":[{\"name\":\"宫坂学\"}]},{\"name\":\"谢晓亮\"},{\"name\":\"林志玲\"}]}]},{\"name\":\"古永锵\",\"children\":[{\"name\":\"马云\"},{\"name\":\"王长田\",\"children\":[{\"name\":\"邓超\",\"children\":[{\"name\":\"俞白眉\",\"children\":[{\"name\":\"姚晨\",\"children\":[{\"name\":\"吴秀波\"},{\"name\":\"吴彦祖\"},{\"name\":\"孙红雷\"}]},{\"name\":\"朱芳雨\",\"children\":[{\"name\":\"王仕鹏\",\"children\":[{\"name\":\"易建联\"}]}]},{\"name\":\"梁超\"}]}]},{\"name\":\"刘亦菲\"},{\"name\":\"刘同\"}]}]},{\"name\":\"朱挺\",\"children\":[{\"name\":\"张耀坤\",\"children\":[{\"name\":\"姜宁\"},{\"name\":\"唐淼\"}]},{\"name\":\"周海滨\",\"children\":[{\"name\":\"汪嵩\",\"children\":[{\"name\":\"蔡贇\"},{\"name\":\"李易峰\"},{\"name\":\"王弢 \"}]},{\"name\":\"邵佳一\"},{\"name\":\"高迪\",\"children\":[{\"name\":\"莫雷诺\"},{\"name\":\"恩里克\"},{\"name\":\"保罗\"}]}]},{\"name\":\"阎小闯\"}]},{\"name\":\"郑璐\",\"children\":[{\"name\":\"于嘉\",\"children\":[{\"name\":\"董成鹏\",\"children\":[{\"name\":\"伊一\",\"children\":[{\"name\":\"许嵩\"},{\"name\":\"付辛博\"},{\"name\":\"洪辰\"}]},{\"name\":\"王祖蓝\",\"children\":[{\"name\":\"王菀之\"},{\"name\":\"李亚男\",\"children\":[{\"name\":\"宋熙年\"},{\"name\":\"钟嘉欣\"},{\"name\":\"陈美诗\"}]},{\"name\":\"贾玲\"}]},{\"name\":\"白客\",\"children\":[{\"name\":\"盛宇\",\"children\":[{\"name\":\"邪童 \"},{\"name\":\"杜海涛\"},{\"name\":\"汪涵\"}]},{\"name\":\"派克特\"},{\"name\":\"谢帝\",\"children\":[{\"name\":\"C-BLOCK小胖\"},{\"name\":\"范元成\"},{\"name\":\"隋凯\",\"children\":[{\"name\":\"高以翔\"},{\"name\":\"马楚成\"}]}]}]}]},{\"name\":\"易建联、李艾、江映蓉\"}]},{\"name\":\"Kevin Han\"}]},{\"name\":\"舒德伟\",\"children\":[{\"name\":\"姚明\"},{\"name\":\"NBA中国全体员工\"}]},{\"name\":\"叶丙成\",\"children\":[{\"name\":\"翟本乔\"},{\"name\":\"嵇晓华\",\"children\":[{\"name\":\"王思聪\",\"children\":[{\"name\":\"易振兴\",\"children\":[{\"name\":\"徐磊\"},{\"name\":\"佟大为\",\"children\":[{\"name\":\"孟非\",\"children\":[{\"name\":\"郭德纲\",\"children\":[{\"name\":\"于谦\"}]},{\"name\":\"黄健翔\",\"children\":[{\"name\":\"张琳芃\",\"children\":[{\"name\":\"黄博文\"},{\"name\":\"李帅\"}]},{\"name\":\"郜林\",\"children\":[{\"name\":\"刘建宏\"},{\"name\":\"李玮峰\"}]}]}]},{\"name\":\"陈坤\"},{\"name\":\"AKB48\"}]},{\"name\":\"吴欣鸿\",\"children\":[{\"name\":\"贾乃亮\"},{\"name\":\"李小璐\"},{\"name\":\"angelababy\"}]}]},{\"name\":\"林更新\",\"children\":[{\"name\":\"赵又廷\"},{\"name\":\"佟丽娅\"},{\"name\":\"AngelaBaby\"}]},{\"name\":\"刘军\"}]},{\"name\":\"魏坤琳\",\"children\":[{\"name\":\"迟毓凯\"},{\"name\":\"李淼\"},{\"name\":\"姜振宇\"}]},{\"name\":\"刘成城\",\"children\":[{\"name\":\"张颖\"},{\"name\":\"王自如\",\"children\":[{\"name\":\"刘翔\"},{\"name\":\"吴海\"},{\"name\":\"傅盛\"}]},{\"name\":\"汪峰\"}]}]}]},{\"name\":\"萧上农\",\"children\":[{\"name\":\"林之晨\",\"children\":[{\"name\":\"柯文哲\",\"children\":[{\"name\":\"赵少康\"},{\"name\":\"魏德圣\"},{\"name\":\"郭子乾\"}]},{\"name\":\"连胜文\",\"children\":[{\"name\":\"郝龙斌\",\"children\":[{\"name\":\"卢贝松\"},{\"name\":\"胡志强\"},{\"name\":\"邱文达\"}]},{\"name\":\"朱立伦\"},{\"name\":\"吴思华\"}]},{\"name\":\"管中闵\",\"children\":[{\"name\":\"杜紫军\"},{\"name\":\"陈保基\"},{\"name\":\"杨泮池\"}]}]},{\"name\":\"陈素兰\",\"children\":[{\"name\":\"颜漏有\",\"children\":[{\"name\":\"詹宏志\",\"children\":[{\"name\":\"钮承泽\"},{\"name\":\"李宗盛\"},{\"name\":\"何飞鹏\"}]},{\"name\":\"陈清祥\",\"children\":[{\"name\":\"黄日灿\"},{\"name\":\"黄胜华\"},{\"name\":\"吴升奇\"}]}]}]},{\"name\":\"蔡牧民\"}]},{\"name\":\"林书豪\",\"children\":[{\"name\":\"兰德里-菲尔兹\"},{\"name\":\"帕森斯\"}]},{\"name\":\"王猛\",\"children\":[{\"name\":\"杨毅\"},{\"name\":\"柯凡\"},{\"name\":\"StephonMarbury\"}]},{\"name\":\"叶璇\",\"children\":[{\"name\":\"李晨\"},{\"name\":\"苏芒\",\"children\":[{\"name\":\"黄晓明\",\"children\":[{\"name\":\"范冰冰\"},{\"name\":\"李冰冰\",\"children\":[{\"name\":\"王中军\"},{\"name\":\"新浪娱乐\"}]}]}]},{\"name\":\"陈欧\"}]},{\"name\":\"章子怡\",\"children\":[{\"name\":\"TFBoys\",\"children\":[{\"name\":\"尚格云顿\"}]},{\"name\":\"韩庚\",\"children\":[{\"name\":\"迈克尔·贝\"},{\"name\":\"何炅\"},{\"name\":\"那英\"}]},{\"name\":\"苏菲玛索\"}]},{\"name\":\"张靓颖\",\"children\":[{\"name\":\"张杰\",\"children\":[{\"name\":\"快乐家族\"},{\"name\":\"李宇春\"},{\"name\":\"萧敬腾\"}]},{\"name\":\"王铮亮\",\"children\":[{\"name\":\"天天兄弟\"},{\"name\":\"武艺\",\"children\":[{\"name\":\"卓文萱\",\"children\":[{\"name\":\"廖俊杰\",\"children\":[{\"name\":\"连晨翔\",\"children\":[{\"name\":\"马振桓\"},{\"name\":\"萧煌奇\"},{\"name\":\"诗安\"}]}]}]},{\"name\":\"阿纬\"},{\"name\":\"洪卓立\"}]},{\"name\":\"DJ小强\"}]},{\"name\":\"Timbaland\"}]},{\"name\":\"邓紫棋\",\"children\":[{\"name\":\"李蕴\",\"children\":[{\"name\":\"何超莲\",\"children\":[{\"name\":\"吴克群\",\"children\":[{\"name\":\" 何猷啟\"},{\"name\":\"陈泽杉\"}]},{\"name\":\"卡提娜\"},{\"name\":\"jw_amusic \"}]},{\"name\":\"诗雅\"},{\"name\":\"陈静\"}]},{\"name\":\"蔡卓妍\",\"children\":[{\"name\":\"钟欣桐\",\"children\":[{\"name\":\"乔振宇\",\"children\":[{\"name\":\"马天宇\"},{\"name\":\"陈伟霆\",\"children\":[{\"name\":\"霍汶希\"}]},{\"name\":\"高伟光\"}]},{\"name\":\" 周汤豪\"},{\"name\":\"黃鴻升\"}]},{\"name\":\"谢娜\"},{\"name\":\"詹瑞文\"}]},{\"name\":\"茜拉\",\"children\":[{\"name\":\"EXO-M\"},{\"name\":\"巫启贤\"}]}]},{\"name\":\"卫诗雅\",\"children\":[{\"name\":\"吴君如\"},{\"name\":\"邹凯光\"},{\"name\":\"钟舒漫\"}]},{\"name\":\"容祖儿\",\"children\":[{\"name\":\"梁家辉\"},{\"name\":\"黄伟文\"}]},{\"name\":\"蔡一智\",\"children\":[{\"name\":\"陈奕迅\",\"children\":[{\"name\":\"谢霆锋\",\"children\":[{\"name\":\"桂纶镁\",\"children\":[{\"name\":\"舒淇\"},{\"name\":\"张惠妹\"},{\"name\":\"孙燕姿\"}]},{\"name\":\"林丹\"},{\"name\":\"李云迪\"}]},{\"name\":\"范晓萱\"},{\"name\":\"张一白\",\"children\":[{\"name\":\"彭于晏\",\"children\":[{\"name\":\"林超贤\"}]},{\"name\":\"魏晨\",\"children\":[{\"name\":\"秦凯\",\"children\":[{\"name\":\"孙杨\",\"children\":[{\"name\":\"张学友\"},{\"name\":\"华少\"}]},{\"name\":\"吴敏霞\"},{\"name\":\"陈一冰\"}]}]},{\"name\":\"张嘉佳\"}]}]},{\"name\":\"葛民辉\"},{\"name\":\"郑伊健\",\"children\":[{\"name\":\"陈小春\"},{\"name\":\"谢天华\"}]}]},{\"name\":\"林俊杰\",\"children\":[{\"name\":\"王力宏\"},{\"name\":\"蔡依林\"}]},{\"name\":\"徐峥\",\"children\":[{\"name\":\"李连杰\"},{\"name\":\"韩寒\"},{\"name\":\"赵薇\"}]},{\"name\":\"刘循子墨\",\"children\":[{\"name\":\"薛之谦\"},{\"name\":\"杨姗姗\"}]},{\"name\":\"王自健\",\"children\":[{\"name\":\"郑凯\"},{\"name\":\"刘江\"},{\"name\":\"刘涛\"}]},{\"name\":\"罗震环\",\"children\":[{\"name\":\"邹凯\",\"children\":[{\"name\":\"许嵩 \"},{\"name\":\"张成龙\"},{\"name\":\"邹市明 \"}]},{\"name\":\"林琪雪\",\"children\":[{\"name\":\"禹景曦\",\"children\":[{\"name\":\"张翔玲\",\"children\":[{\"name\":\"PLU小米\"},{\"name\":\"高地平\"}]},{\"name\":\"戴士\",\"children\":[{\"name\":\"杨丰智\"},{\"name\":\"李鑫\"},{\"name\":\"卢本伟\",\"children\":[{\"name\":\"孙亚龙\"},{\"name\":\"瞿申图\"},{\"name\":\"朱永权\"}]}]},{\"name\":\"裴乐\",\"children\":[{\"name\":\"沈伟荣\",\"children\":[{\"name\":\"金亦波\"},{\"name\":\"卞正伟\"}]},{\"name\":\"李君\"}]}]},{\"name\":\"孔连顺\",\"children\":[{\"name\":\"老湿\",\"children\":[{\"name\":\"至尊玉\"},{\"name\":\"马俊\"},{\"name\":\"颜土豆avi\"}]},{\"name\":\"小爱\"},{\"name\":\"马诗歌\",\"children\":[{\"name\":\"张本煜\"}]}]},{\"name\":\"孙博文\",\"children\":[{\"name\":\"陈剑书\"},{\"name\":\"陈琦栋\"},{\"name\":\"滕林季\"}]}]},{\"name\":\"沈建宏\",\"children\":[{\"name\":\"陈奕\",\"children\":[{\"name\":\"炎亚纶\"},{\"name\":\"张榕容\"},{\"name\":\"刘希平\"}]},{\"name\":\"何润东\",\"children\":[{\"name\":\"俞永福\",\"children\":[{\"name\":\"曹国伟\"},{\"name\":\"余承东\"},{\"name\":\"金池\",\"children\":[{\"name\":\"曹格\"},{\"name\":\"魏雪漫\"},{\"name\":\"曾一鸣 \"}]}]},{\"name\":\"郭品超\"},{\"name\":\"霍建华 \"}]},{\"name\":\"张根硕\"}]}]},{\"name\":\"涂松岩\",\"children\":[{\"name\":\"海清\"},{\"name\":\"张韵艺\"},{\"name\":\"王媛可\"}]},{\"name\":\"陈嘉上\",\"children\":[{\"name\":\"包贝尔\",\"children\":[{\"name\":\"陈赫\"},{\"name\":\"杨子姗\"}]}]},{\"name\":\"留几手\",\"children\":[{\"name\":\"夏河\"},{\"name\":\"陆琪\",\"children\":[{\"name\":\"贝志诚\"},{\"name\":\"孙杰\"}]},{\"name\":\"张辛苑\",\"children\":[{\"name\":\"黄轩\"},{\"name\":\"古川雄辉\"},{\"name\":\"蒋劲夫\"}]}]},{\"name\":\"郑希怡\",\"children\":[{\"name\":\"古巨基\",\"children\":[{\"name\":\"崔始源\",\"children\":[{\"name\":\"朴正洙\"},{\"name\":\"金希澈\"}]},{\"name\":\"黄子华\"}]}]},{\"name\":\"宁浩\",\"children\":[{\"name\":\"徐铮\"},{\"name\":\"黄渤\"},{\"name\":\"雷佳音\"}]},{\"name\":\"鈕承澤\",\"children\":[{\"name\":\"陈意涵\",\"children\":[{\"name\":\"张钧甯\"},{\"name\":\"陈柏霖\",\"children\":[{\"name\":\"冯绍峰\"},{\"name\":\"高华阳\",\"children\":[{\"name\":\"王志鹏\"},{\"name\":\"李东霖\"},{\"name\":\"夏青\"}]}]},{\"name\":\"池珍熙\"}]},{\"name\":\"阮经天\"}]},{\"name\":\"周显扬\",\"children\":[{\"name\":\"王珞丹\"},{\"name\":\"井柏然\"},{\"name\":\"张晋\"}]},{\"name\":\"徐熙娣\",\"children\":[{\"name\":\"蔡康永\"}]},{\"name\":\"刘俊纬\",\"children\":[{\"name\":\"杨奇煜\",\"children\":[{\"name\":\"曾志伟\"},{\"name\":\"张艾亚\",\"children\":[{\"name\":\"房思瑜\"}]}]},{\"name\":\"林峰\"}]},{\"name\":\"周汤豪\",\"children\":[{\"name\":\"庄濠全\",\"children\":[{\"name\":\"罗志祥\"},{\"name\":\"簡愷樂\"}]},{\"name\":\"林暐恒\"},{\"name\":\"王雪娥\",\"children\":[{\"name\":\"洪炜宁\"}]}]},{\"name\":\"杨颖\",\"children\":[{\"name\":\"倪妮\"}]},{\"name\":\"董子健\",\"children\":[{\"name\":\"郭京飞\",\"children\":[{\"name\":\"袁咏仪\"},{\"name\":\"钱芳\"}]},{\"name\":\"陆毅\"},{\"name\":\"关锦鹏\"}]}]}";
    NSData *jsonData = [jsonDataStr dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return;
    }
    series.data = @[dic];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    [_echartsView setOption:option];
}

- (void)showTreeDemo3 {
//    PYOption *option = [[PYOption alloc] init];
    
    PYOption *option = [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.calculable = NO;
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.text = @"手机品牌";
            title.subtext = @"线、节点样式";
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip = [[PYTooltip alloc] init];
            tooltip.trigger = PYTooltipTriggerItem;
            tooltip.formatter = @"{b}: {c}";
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.feature = [[PYToolboxFeature alloc] init];
            toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
            toolbox.feature.mark.show = YES;
            toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
            toolbox.feature.dataView.show = YES;
            toolbox.feature.dataView.readOnly = NO;
            toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
            toolbox.feature.restore.show = YES;
        }]);
        
        PYTreeSeries *series = [PYTreeSeries initPYTreeSeriesWithBlock:^(PYTreeSeries *series) {
            series.name = @"树图";
            series.type = PYSeriesTypeTree;
            series.orient = @"horizontal";
            series.rootLocation = @{@"x":@0, @"y":@"50%"};
            series.nodePadding = @5;
            series.symbol = PYSymbolCircle;
            series.symbolSize = @20;

            series.itemStyle = [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.show = YES;
                        label.position = @"inside";
                        label.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.color = [PYColor colorWithHexString:@"#cc9999"];
                            textStyle.fontSize = @15;
                            textStyle.fontWeight = PYTextStyleFontWeightBolder;
                        }]);
                    }])
                    .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                        lineStyle = [[PYLineStyle alloc] init];
                        lineStyle.color = [PYColor colorWithHexString:@"#000"];
                        lineStyle.width = @1;
                        lineStyle.type = PYLineStyleTypeBroken;
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis = [[PYItemStyleProp alloc] init];
                    emphasis.label = [[PYLabel alloc] init];
                    emphasis.label.show = YES;
                }]);
            }];
        }];
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
        option.series  = [[NSMutableArray alloc] initWithArray:@[series]];
    }];
    
    [_echartsView setOption:option];
}

@end
