# iOS- Echarts - 将ECharts封装成iOS控件
本项目是将百度的ECharts工具封装成对应的iOS的控件，并且将其中javascript的属性封装成对应的对象。方便程序员在编写程序的过程中更加关注OC的代码，避免在使用百度的ECharts工具的过程中过多的关注javascript语法和与javascript之间的交互。

#Echarts信息
[Echarts Github地址](https://github.com/ecomfe/echarts)

[Echarts 官网(中文)](http://echarts.baidu.com/index.html)

[Echarts WebSite(English)](http://echarts.baidu.com/index-en.html)


#如何使用
有两种方法可以使用：

* 通过`cocoapods`进行导入：`pod 'iOS-Echarts' `
* 将项目下的`iOS-Echarts`目录拷贝到项目中

在需要使用的地方引入`PYEchartsView.h`和`PYOption.h`。
最后只需通过对图表的属性进行配置即可。

至于其中的参数与文档可以参考上方的[Echart官网](http://echarts.baidu.com/)进行查看与配置。
