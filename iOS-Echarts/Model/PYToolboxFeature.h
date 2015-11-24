//
//  PYToolboxFeature.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/18.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle, PYOption;

@interface PYToolboxFeatureMarkTitle : NSObject

@property (retain, nonatomic) NSString *mark;
@property (retain, nonatomic) NSString *markUndo;
@property (retain, nonatomic) NSString *markClear;

@end

@interface PYToolboxFeatureMark : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) PYToolboxFeatureMarkTitle *title;
@property (retain, nonatomic) PYLineStyle *lineStyle;

@end

@interface PYToolboxFeatureDataZoomTitle : NSObject

@property (retain, nonatomic) NSString *dataZoom;
@property (retain, nonatomic) NSString *dataZoomReset;

@end

@interface PYToolboxFeatureDataZoom : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) PYToolboxFeatureDataZoomTitle *title;

@end

@interface PYToolboxFeatureDataView : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSString *title;
@property (assign, nonatomic) BOOL readOnly;
@property (retain, nonatomic) NSArray *lang;

@end

@interface PYToolboxFeatureMagicTypeTitle : NSObject

@property (retain, nonatomic) NSString *line;
@property (retain, nonatomic) NSString *bar;
@property (retain, nonatomic) NSString *stack;
@property (retain, nonatomic) NSString *tiled;
@property (retain, nonatomic) NSString *force;
@property (retain, nonatomic) NSString *chord;
@property (retain, nonatomic) NSString *pie;
@property (retain, nonatomic) NSString *funnel;

@end

@interface PYToolboxFeatureMagicType : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) PYToolboxFeatureMagicTypeTitle *title;
@property (retain, nonatomic) PYOption *option;
@property (retain, nonatomic) NSArray *type;

@end

@interface PYToolboxFeatureRestore : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSString *title;

@end

@interface PYToolboxFeatureSaveAsImage : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSString *title;
@property (retain, nonatomic) NSString *type;
@property (retain, nonatomic) NSString *lang;

@end


@interface PYToolboxFeature : NSObject

@property (retain, nonatomic) PYToolboxFeatureMark *mark;
@property (retain, nonatomic) PYToolboxFeatureDataZoom *dataZoom;
@property (retain, nonatomic) PYToolboxFeatureDataView *dataView;
@property (retain, nonatomic) PYToolboxFeatureMagicType *magicType;
@property (retain, nonatomic) PYToolboxFeatureRestore *restore;
@property (retain, nonatomic) PYToolboxFeatureSaveAsImage *saveAsImage;


@end
