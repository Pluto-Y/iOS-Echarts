//
//  EChartUtil.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/6/1.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "EChartUtil.h"
#import <objc/runtime.h>

@implementation EChartUtil

#pragma mark - static function
+ (NSDictionary*)getObjectData:(id)obj{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int propsCount;
    objc_property_t *props = class_copyPropertyList([obj class], &propsCount);
    for(int i = 0;i < propsCount; i++)
    {
        objc_property_t prop = props[i];
        
        NSString *propName = [NSString stringWithUTF8String:property_getName(prop)];
        id value = [obj valueForKey:propName];
        if(value == nil)
        {
            value = [NSNull null];
        }
        else
        {
            value = [self getObjectInternal:value];
        }
        [dic setObject:value forKey:propName];
    }
    return dic;
}

+ (id)getObjectInternal:(id)obj
{
    if([obj isKindOfClass:[NSString class]]
       || [obj isKindOfClass:[NSNumber class]]
       || [obj isKindOfClass:[NSNull class]])
    {
        return obj;
    }
    
    if([obj isKindOfClass:[NSArray class]])
    {
        NSArray *objarr = obj;
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:objarr.count];
        for(int i = 0;i < objarr.count; i++)
        {
            [arr setObject:[self getObjectInternal:[objarr objectAtIndex:i]] atIndexedSubscript:i];
        }
        return arr;
    }
    
    if([obj isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *objdic = obj;
        NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithCapacity:[objdic count]];
        for(NSString *key in objdic.allKeys)
        {
            [dic setObject:[self getObjectInternal:[objdic objectForKey:key]] forKey:key];
        }
        return dic;
    }
    return [self getObjectData:obj];
}

/**
 *  显示折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 *  @param methodName javascript方法名称
 */
+(void)showLineChart:(EChartsData *)data webView:(UIWebView *)webView methodName:(NSString *)methodName; {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[self getObjectData:data] options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",jsonStr);
    
    NSString *js = [NSString stringWithFormat:@"%@(%@)", methodName, jsonStr];
    [webView stringByEvaluatingJavaScriptFromString:js];
}

/**
 *  显示有标准区间的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart1:(EChartsData *)data webView:(UIWebView *)webView {
    [EChartUtil showLineChart:data webView:webView methodName:@"test1"];
}

/**
 *  显示有标准曲线的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart2:(EChartsData *)data webView:(UIWebView *)webView {
    [EChartUtil showLineChart:data webView:webView methodName:@"test2"];
}

/**
 *  显示没有任何标准的折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart3:(EChartsData *)data webView:(UIWebView *)webView {
    [EChartUtil showLineChart:data webView:webView methodName:@"test3"];
}

/**
 *  显示没有任何数据的默认折线图
 *
 *  @param data    需要传递到html中的数据信息
 *  @param webView 需要显示折线图的webView
 */
+(void)showLineChart4:(EChartsData *)data webView:(UIWebView *)webView {
    [EChartUtil showLineChart:data webView:webView methodName:@"test4"];
}

@end
