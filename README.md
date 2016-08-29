# iOS- Echarts - A control build with echarts  
[中文文档](https://github.com/Pluto-Y/iOS-Echarts/tree/master/Doc) 

[![Build Status](https://travis-ci.org/Pluto-Y/iOS-Echarts.svg)](https://travis-ci.org/Pluto-Y/iOS-Echarts)  [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/iOS-Echarts.svg)](https://img.shields.io/cocoapods/v/iOS-Echarts.svg)

____

This is a highly custom chart control for iOS apps, which build with the EChart(Echart2). It just encapsulate the conrol of the javascript. It provides a chainable way of describing your configurations for the echarts.  It's convinient for foucing on the logic of the app and optimizing the code. It avoid diverting developers' mind on the interaction between javascript and Objective-C.

If you like this control, please star it. It can make me pay more attention on it.

And also if you find a issue, please [issue me]((https://github.com/Pluto-Y/iOS-Echarts/issues/new)).
Pull requests are warmly welcome as well.

![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos.gif) ![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos1.gif)

# Echarts Informations

___

[Echarts Github](https://github.com/ecomfe/echarts)

[Echarts WebSite(English)](http://echarts.baidu.com/echarts2/index-en.html)


# Installation

___

There are two ways to use iOS-Echarts in you project:

* Using cocoapods:`pod iOS-Echarts`
* Manually:
    * First, copying all the files into you project
    * Second, `Remove references`the directory named 'js'
    * Finnaly, add the directory named 'js' by `create floder references`

*** Please Be Sure The Color Of `js` Directory Is Blue. ***

You should import one header file in your project:`iOS-Echarts.h` when you will use it.
Finally you just need to initialze the PYEchartsView and PYOption you need. 

If you don't know how to set the right value for the option, you can check the documents in the [EChart Website](http://echarts.baidu.com/echarts2/).

# Usage

___

### The common step like the under codes:

```
// Firstly, you should have a instance of PYEchartsView
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

...

PYOption *option = ... // Then, configure something about options
// Finally, load echarts view
[_echartsView setOption:option]; 
[_echartsView loadEcharts];
```

### All properties setter are chainable, you can use `[property-name]Equal`

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

### You also can assign all values one by one:


```
PYEventRiverSeries *series1 = [PYEventRiverSeries initPYEventRiverSeriesWithBlock:^(PYEventRiverSeries *series) {
    series.weight = @123;
    series.name = @"Series name";
    series.type = PYSeriesTypeEventRiver;
}];
```

### All propertis can use `init[Type]WithBlock` for creation:

```
PYAxis *axis = [PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
    axis.typeEqual(PYAxisTypeTime).boundaryGapEqual(@[@0.05, @0.1]);
}];
```

# Contact

___

Follow and contact me on [Twitter](https://twitter.com/youtk21ai) or [Sina Weibo](http://weibo.com/5690716723/info). And if you want to contribute with this projust, please contact me as well.

If you have QQ, you can join the group which number is 485591970.

# Licenses

___

All source code is licensed under the MIT License.
