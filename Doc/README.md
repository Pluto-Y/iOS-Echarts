# iOS- Echarts - 将 ECharts 2 封装成iOS控件

[![Build Status](https://travis-ci.org/Pluto-Y/iOS-Echarts.svg)](https://travis-ci.org/Pluto-Y/iOS-Echarts) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/iOS-Echarts.svg)](https://img.shields.io/cocoapods/v/iOS-Echarts.svg)

___

本项目是将百度的ECharts(Echarts2)工具封装成对应的iOS和Mac的控件，并且将其中javascript的属性封装成对应的对象。并且提供了链式编程，方面大家进行配置Echarts的属性。方便程序员在编写程序的过程中更加关注OC的代码，避免在使用百度的ECharts工具的过程中过多的关注javascript语法和与javascript之间的交互。

> 注意: 如果你App最低支持到iOS8.0, 我建议您使用 `WKEchartsView`, 因为 `WKEchartsView` 是基于 `WKWebView` 的。 而 `WKEchartsView` 的接口与 `PYEchartsView` 的接口是一样的，所以如果你想从之前的替换到 `WKEchartsView`， 只需将 `PYEchartsView` 替换成`WKEchartsView` 即可。

注：如果小伙伴觉得这个工具有用的话，麻烦点一下star，你的star是我继续的动力！

如果你遇到什么问题可以添加一个[Issue](https://github.com/Pluto-Y/iOS-Echarts/issues/new)给我。当然同时欢迎大家给我一个Pull Request。

![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos.gif)
![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos1.gif)

# Echarts信息

___

[Echarts Github地址](https://github.com/ecomfe/echarts)

[Echarts 官网(中文)](http://echarts.baidu.com/echarts2/)

[Echarts WebSite(English)](http://echarts.baidu.com/echarts2/index-en.html)


# 如何使用

___

有两种方法可以使用：

* 通过`cocoapods`进行导入：`pod 'iOS-Echarts' `
* 手动导入：
    * 将项目下的`iOS-Echarts`目录拷贝到项目中
    * `Remove References`移除js和theme目录，然后通过`create floder references`的方式添加js目录

⚠️  *** 请确保js和theme目录是蓝色的 *** ⚠️ 

在需要使用的地方引入`iOS-Echarts.h`即可。
最后只需通过对图表的属性进行配置即可。

至于其中的参数与文档可以参考上方的[Echart官网](http://echarts.baidu.com/echarts2/)中的文档进行查看与配置。

> FAQ: 如果在引入之后又非常多的编译错误，可以参考 [预编译](http://www.jianshu.com/p/0e638bedb612) 的文章 

# 用法

___

### 通常的步骤为:

```
// 首先你有一个PYEchartsView的实例
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

...

PYOption *option = ... // 一些关于PYOption配置

// 最后设置配置型以及加载
[_echartsView setOption:option];
[_echartsView loadEcharts];
```

### 所有的属性都可以通过链式的方式进行设置，通过`[属性名]Equal`来设置

```
PYOption *option = [PYOption initPYOptionWithBlock:^(PYOption *option) {

    option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
        title.textEqual(@"Event River").subtextEqual(@"Test subtext");
    }])
    .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
        tooltip.triggerEqual(PYTooltipTriggerItem).enterableEqual(YES);
    }])
    .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
        legend.dataEqual(@[@"first data", @"second data"]);
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
    .xAxisEqual([[NSMutableArray alloc] initWithArray:@[axis]])
    .seriesEqual([[NSMutableArray alloc] initWithArray:@[series1, series2]])
    .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
        grid.xEqual(@10)
        .x2Equal(@30);
    }]);
}];
```

### 许多属性都支持 add[Name] 和 add[Name]Arr 方法，当你准备用一个 `NSMutableArray` 类型的属性的时候，你可以先尝试用一下`add`方法

```
option.addXAxis(//Something about PYAxis)
.addYAxis(//Something about PYAxis)
.addSeries(//Something about PYSeries or sub class of PYSeries)
```

### 当你为 `PYSeries` 的子类赋值是，你应该先为子类的属性赋值，再为 `PYSereis` 的属性赋值，就像这样:

```
.addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
    series.stackEqual(@"总量")
    .smoothEqual(YES)
    .symbolEqual(PYSymbolArrow)
    .symbolSizeEqual(@6)
    .symbolRotateEqual(@(-45))
    .nameEqual(@"直接访问")
    .typeEqual(PYSeriesTypeLine)
    .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.colorEqual(PYRGBA(255, 0, 0, 1))
            .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                lineStyle.widthEqual(@2).typeEqual(PYLineStyleTypeDashed);
            }]);
        }]).emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
            emphasis.colorEqual(PYRGBA(0, 0, 255, 1));
        }]);
    }])
    .dataEqual(@[@(320), @(332), @"-", @(334), @{@"value":@(390),@"symbol":@"star6",@"symbolSize":@(20),@"symbolRotate":@(10),@"itemStyle":@{@"normal":@{@"color":@"yellowgreen"},@"emphasis":@{@"color":@"orange",@"lable":@{@"show":@(YES),@"position":@"inside",@"textStyle":@{@"fontSize":@(20)}}}}}, @(330), @(320)]);
}])
```

其中`PYCartesianSeries` 是 `PYSeries` 的子类，并且`stack`, `smooth`, `symbol`, `symbolSize` 和 `symbol`都是 `PYCartesianSeries` 的属性，所以你应该在 `PYSeries` 的属性前赋值。

### 当然你也可以一个一个的赋值:

```
PYEventRiverSeries *series1 = [PYEventRiverSeries initPYEventRiverSeriesWithBlock:^(PYEventRiverSeries *series) {
    series.weight = @123;
    series.name = @"Series name";
    series.type = PYSeriesTypeEventRiver;
}];
```


### 所有属性都可以通过`init[类型]WithBlock`来创建:

```
PYAxis *axis = [PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
    axis.typeEqual(PYAxisTypeTime).boundaryGapEqual(@[@0.05, @0.1]);
}];
```


# 打个广告

___

由于这个项目需要封装的内容有点多，希望有小伙伴一起来封装，有兴趣的小伙伴可以通过联系[@叫什么都都不如叫Pluto-Y](http://weibo.com/5690716723/info)来联系我。

同时也欢迎加入QQ群485591970进行讨论。
