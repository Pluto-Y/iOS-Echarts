//
//  EChartUtil.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/6/1.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EChartsData.h"

@interface EChartUtil : NSObject

/**
 *  显示有标准区间的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart1:(id)data webView:(UIWebView *)webView;

/**
 *  显示有标准曲线的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart2:(EChartsData *)data webView:(UIWebView *)webView;

/**
 *  显示没有任何标准的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart3:(EChartsData *)data webView:(UIWebView *)webView;

/**
 *  显示没有任何数据的默认折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart4:(EChartsData *)data webView:(UIWebView *)webView;

@end
