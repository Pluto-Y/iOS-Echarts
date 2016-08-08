//
//  JsonUtil.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYJsonUtil.h"
#import <objc/runtime.h>
#import "PYColor.h"

@implementation PYJsonUtil

/**
 *  Convert NSObject to Json String
 *
 *  @param obj The object which needs to convert json string
 *
 *  @return The json string
 */
+ (NSString *)getJSONString:(id)obj {
    NSString *jsonString;
    NSData *jsonData;
    if ([obj isKindOfClass:[NSArray class]] || [obj isKindOfClass:[NSMutableArray class]]) {
        NSString *tmpJson;
        jsonString = @"[";
        for (id object in obj) {
            tmpJson = [self getJSONString:object];;
            jsonString = [NSString stringWithFormat:@"%@%@,", jsonString, tmpJson];
        }
        jsonString = [[jsonString substringToIndex:jsonString.length-1] stringByAppendingString:@"]"];
    } else if ([obj isKindOfClass:[NSDictionary class]] || [obj isKindOfClass:[NSMutableDictionary class]]) {
        jsonString = [self jsonStringWithPrettyPrint:YES dic:obj];
    } else {
        jsonData = [self getJSONData:obj];
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}

+ (NSString*)jsonStringWithPrettyPrint:(BOOL)prettyPrint dic:(NSDictionary *)dic {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic
                                                       options:(NSJSONWritingOptions)    (prettyPrint ? NSJSONWritingPrettyPrinted : 0)
                                                         error:&error];
    if (!jsonData) {
        NSLog(@"jsonStringWithPrettyPrint: error: %@", error.localizedDescription);
        return @"{}";
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

+ (NSData*)getJSONData:(id)obj {
    return [self getJSON:obj options:NSJSONWritingPrettyPrinted];
}

+ (NSData*)getJSON:(id)obj options:(NSJSONWritingOptions)options {
    return [self getJSON:obj options:options error:nil];
}

+ (NSData*)getJSON:(id)obj options:(NSJSONWritingOptions)options error:(NSError**)error {
    return [NSJSONSerialization dataWithJSONObject:[self getObjectData:obj] options:options error:error];
}

/**
 *  将指定对象转换成NSDirectory
 *
 *  @param obj 需要转换的对象
 *
 *  @return 转换后的NSDictionary对象
 */
+ (NSDictionary*)getObjectData:(id)obj {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int propsCount;
    if ([obj respondsToSelector:@selector(reloadData)]) {
        [obj reloadData];
    }
    Class class = [obj class];
    do { // 加这个do-while是为了将父类的属性页进行遍历
        objc_property_t *props = class_copyPropertyList(class, &propsCount);
        for(int i = 0;i < propsCount; i++)
        {
            objc_property_t prop = props[i];
            
            NSString *propName = [NSString stringWithUTF8String:property_getName(prop)];
            id value = [obj valueForKey:propName];
            if(value == nil)
            {
//                value = [NSNull null];
                continue;
            }
            else
            {
                value = [self getObjectInternal:value];
            }
            [dic setObject:value forKey:propName];
        }
        free(props);
        class = [class superclass];
    } while (class != [NSObject class]);
    return dic;
}

+ (id)getObjectInternal:(id)obj
{
    if ([obj isKindOfClass:[PYColor class]]) {
        return [obj description];
    }
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

@end
