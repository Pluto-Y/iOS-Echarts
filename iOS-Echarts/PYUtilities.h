//
//  PYUtilities.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#ifndef PYUtilities_h
#define PYUtilities_h

//#define __DEBUG__ 1
#ifdef __DEBUG__
#define PYLog(...) NSLog(__VA_ARGS__)
#else
#define PYLog(...) do{} while(0)
#endif

#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
    #import <UIKit/UIKit.h>
    #define PY_WEB_VIEW UIWebView
    #define PY_WEB_DELEGATE UIWebViewDelegate
    #define PY_COLOR UIColor
    #define PY_IMAGE UIImage
    #define PY_EDGE_INSET UIEdgeInsets
#elif TARGET_OS_MAC
    #import <AppKit/AppKit.h>
    #import <WebKit/WebKit.h>
    #define PY_WEB_VIEW WebView
    #define PY_WEB_DELEGATE WebFrameLoadDelegate
    #define PY_COLOR NSColor
    #define PY_IMAGE NSImage
    #define PY_EDGE_INSET NSEdgeInsets
#endif


#pragma mark - The global type and constant
static NSString *PYAuto = @"auto";
static NSString *PYNone = @"none";

typedef NSString *PYInterval;
static PYInterval const PYIntervalAuto = @"auto";
static PYInterval const PYIntervalAll  = @"all";

typedef NSString *PYSymbol;
static PYSymbol const PYSymbolNone           = @"none";
static PYSymbol const PYSymbolCircle         = @"circle";
static PYSymbol const PYSymbolRectangle      = @"rectangle";
static PYSymbol const PYSymbolTriangle       = @"triangle";
static PYSymbol const PYSymbolDiamond        = @"diamond";
static PYSymbol const PYSymbolEmptyCircle    = @"emptyCircle";
static PYSymbol const PYSymbolEmptyRectangle = @"emptyRectangle";
static PYSymbol const PYSymbolEmptyTriangle  = @"emptyTriangle";
static PYSymbol const PYSymbolEmptyDiamond   = @"emptyDiamond";
static PYSymbol const PYSymbolHeart          = @"heart";
static PYSymbol const PYSymbolDroplet        = @"droplet";
static PYSymbol const PYSymbolPin            = @"pin";
static PYSymbol const PYSymbolArrow          = @"arrow";
static PYSymbol const PYSymbolStar5          = @"star5";

typedef NSString *PYSort;
static PYSort const PYSortNone       = @"none";
static PYSort const PYSortAscending  = @"ascending";
static PYSort const PYSortDescending = @"descending";

typedef NSString *PYPosition;
static PYPosition const PYPositionLeft   = @"left";
static PYPosition const PYPositionRight  = @"right";
static PYPosition const PYPositionCenter = @"center";
static PYPosition const PYPositionTop    = @"top";
static PYPosition const PYPositionBottom = @"bottom";

typedef NSString *PYOrient;
static PYOrient const PYOrientHorizontal = @"horizontal";
static PYOrient const PYOrientVertical   = @"vertical";

typedef NSString * PYEchartTheme;
static PYEchartTheme const PYEchartThemeMacarons    = @"macarons";
static PYEchartTheme const PYEchartThemeInfographic = @"infographic";
static PYEchartTheme const PYEchartThemeShine       = @"shine";
static PYEchartTheme const PYEchartThemeDark        = @"dark";
static PYEchartTheme const PYEchartThemeBlue        = @"blue";
static PYEchartTheme const PYEchartThemeGreen       = @"green";
static PYEchartTheme const PYEchartThemeRed         = @"red";
static PYEchartTheme const PYEchartThemeGray        = @"gray";
static PYEchartTheme const PYEchartThemeHelianthus  = @"helianthus";
static PYEchartTheme const PYEchartThemeRoma        = @"roma";
static PYEchartTheme const PYEchartThemeMint        = @"mint";
static PYEchartTheme const PYEchartThemeMacarons2   = @"macarons2";
static PYEchartTheme const PYEchartThemeSakura      = @"sakura";
static PYEchartTheme const PYEchartThemeDefault     = @"default";

typedef void (^PYEchartActionHandler) (NSDictionary *params);

typedef NSString *PYEchartAction;
static PYEchartAction const PYEchartActionResize          = @"resize";
static PYEchartAction const PYEchartActionClick           = @"click";
static PYEchartAction const PYEchartActionDbClick         = @"dblclick";
static PYEchartAction const PYEchartActionDataChanged     = @"dataChanged";
static PYEchartAction const PYEchartActionDataZoom        = @"dataZoom";
static PYEchartAction const PYEchartActionDataRange       = @"dataRange";
static PYEchartAction const PYEchartActionLegendSelected  = @"legendSelected";
static PYEchartAction const PYEchartActionMapSelected     = @"mapSelected";
static PYEchartAction const PYEchartActionPieSelected     = @"pieSelected";
static PYEchartAction const PYEchartActionMagicTypeChange = @"magicTypeChanged";
static PYEchartAction const PYEchartActionDataViewChanged = @"dataViewChanged";
static PYEchartAction const PYEchartActionTimelineChanged = @"timelineChanged";
static PYEchartAction const PYEchartActionMapRoam         = @"mapRoam";

typedef NSString *PYEchartsViewImageType;
static PYEchartsViewImageType const PYEchartsViewImageTypeJEPG = @"jpeg";
static PYEchartsViewImageType const PYEchartsViewImageTypePNG = @"png";

static NSString *const kEchartActionObtainImg = @"obtainImg";

#pragma mark - The template marco

/**
 *  The template of the add methods.
 *  Which can help user to add datas into the Array,
 *  Eg: the xAxis in `PYOptions`
 *  This can create a method named 'addXAxis'
 */
#define PYAddMethodTemplate(cls, type, mName, pName)                            \
    - (cls *(^)(type *pName))add##mName;                                        \
    - (cls *(^)(NSArray *arr))add##mName##Arr;                                  \

/**
 *  the template of implemetion of add methods.
 */
#define PYAddMethodImpTemplate(cls, type, mName, pName)                         \
    - (cls *(^)(type *pName))add##mName {                                       \
        if(_##pName == nil) {                                                   \
            _##pName = [[NSMutableArray alloc] init];                           \
        }                                                                       \
        return ^id(type *val) {                                                 \
            [_##pName addObject:val];                                           \
            return self;                                                        \
        };                                                                      \
    }                                                                           \
    - (cls *(^)(NSArray *arr))add##mName##Arr {                                 \
        if(_##pName == nil) {                                                   \
            _##pName = [[NSMutableArray alloc] init];                           \
        }                                                                       \
        return ^id(NSArray *arr) {                                              \
            [_##pName addObjectsFromArray:arr];                                 \
            return self;                                                        \
        };                                                                      \
    }

/*
 if (_##pName != nil                                                     \
 && ![_##pName isMemberOfClass:[NSArray class]]) {            \
 NSLog(@"ERROR:##pName## is not the type named 'NSMutableArray'");   \
 return nil;                                                         \
 }                                                                       \
 */

/**
 *  The template of custom initializer.
 *  We can use this initializer to create the object,
 *  then use the block to update the property of the object.
 */
#define PYInitializerTemplate(cls, name)                                        \
    + (cls *)init##cls##WithBlock:(void(^)(cls * name))block;

/**
 *  The implemention of the custom initializer(above).
 */
#define PYInitializerImpTemplate(cls)                                           \
    + (cls *)init##cls##WithBlock:(void(^)(cls *))block {                       \
        cls *tmp = [[self alloc] init];                                         \
        block(tmp);                                                             \
        return tmp;                                                             \
    }

/**
 *  The template of the interface which is property custom setter.
 *  You can use this interface to set value for special property.
 *
 *  @param cls  The property is in this class
 *  @param type The property's type
 *  @param name The name of parameter which the property in the object.
 */
#define PYPropertyEqualTemplate(cls, type, name)                                \
    - (cls * (^) (type name)) name##Equal;                                      \


/**
 *  The default implementation for the special the interface(above).
 *  You can use this default in the object.
 *
 *  @param cls  The property is in this class
 *  @param type The property's type
 *  @param name The name of parameter which the property in the object.
 */
#define PYPropertyEqualImpTemplate(cls, type, name)                             \
    - (cls * (^) (type name))name##Equal{                                       \
        return ^(type name) {                                                   \
            self.name         = name;                                           \
            return self;                                                        \
        };                                                                      \
    }                                                                           \

#endif /* PYUtilities_h */
