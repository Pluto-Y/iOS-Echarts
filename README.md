# iOS- Echarts - 将ECharts封装成iOS控件
本项目是将百度的ECharts(echarts2)工具封装成对应的iOS的控件，并且将其中javascript的属性封装成对应的对象。方便程序员在编写程序的过程中更加关注OC的代码，避免在使用百度的ECharts工具的过程中过多的关注javascript语法和与javascript之间的交互。

注：如果小伙伴觉得这个工具有用的话，麻烦点一下star，你的star是我继续的动力！

如果你遇到什么问题可以添加一个[Issue](https://github.com/Pluto-Y/iOS-Echarts/issues/new)给我。当然同时欢迎大家给我一个Pull Request。

![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos.gif)

# Echarts信息
[Echarts Github地址](https://github.com/ecomfe/echarts)

[Echarts 官网(中文)](http://echarts.baidu.com/echarts2/)

[Echarts WebSite(English)](http://echarts.baidu.com/echarts2/index-en.html)


# 如何使用
有两种方法可以使用：

* 通过`cocoapods`进行导入：`pod 'iOS-Echarts' `
* 手动导入：
    * 将项目下的`iOS-Echarts`目录拷贝到项目中
    * `Remove References`移除js目录，然后通过`create floder references`的方式添加js目录

在需要使用的地方引入`PYEchartsView.h`和`PYOption.h`。
最后只需通过对图表的属性进行配置即可。

至于其中的参数与文档可以参考上方的[Echart官网](http://echarts.baidu.com/echarts2/)中的文档进行查看与配置。

# 打个广告
由于这个项目需要封装的内容有点多，希望有小伙伴一起来封装，有兴趣的小伙伴可以通过联系[@叫什么都都不如叫Pluto-Y](http://weibo.com/5690716723/info)来联系我。

