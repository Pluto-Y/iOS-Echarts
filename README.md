# iOS- Echarts - A control build with echarts 
[中文文档](https://github.com/Pluto-Y/iOS-Echarts/tree/master/Doc)

This is a highly custom chart control for iOS apps, which build with the EChart(Echart2). It just encapsulate the conrol of the javascript. It's convinient for foucing on the logic of the app and optimizing the code. It avoid diverting developers' mind on the interaction between javascript and Objective-C.

If you like this control, please star it. It can make me pay more attention on it.

And also if you find a issue, please [issue me]((https://github.com/Pluto-Y/iOS-Echarts/issues/new)).
Pull requests are warmly welcome as well.

![screen-shot](https://raw.githubusercontent.com/Pluto-Y/iOS-Echarts/master/Doc/Demos.gif)

# Echarts Informations
[Echarts Github](https://github.com/ecomfe/echarts)

[Echarts WebSite(English)](http://echarts.baidu.com/echarts2/index-en.html)


# Installation
There are two ways to use iOS-Echarts in you project:

* Using cocoapods:`pod iOS-Echarts`
* Manually:
    * First, copying all the files into you project
    * Second, `Remove references`the directory named 'js'
    * Finnaly, add the directory named 'js' by `create floder references`

You should import two header files in your project:`PYEchartsView.h` and `PYOption.h` when you will use it.
Finally you just need to initialze the PYEchartsView and PYOption you need. 

If you don't know how to set the right value for the option, you can check the documents in the [EChart Website](http://echarts.baidu.com/echarts2/).

# Contact
Follow and contact me on [Twitter](https://twitter.com/youtk21ai) or [Sina Weibo](http://weibo.com/5690716723/info). And if you want to contribute with this projust, please contact me as well.

# Licenses
All source code is licensed under the MIT License.


