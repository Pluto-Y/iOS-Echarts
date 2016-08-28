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

@property (nonatomic, copy) NSString *mark;
@property (nonatomic, copy) NSString *markUndo;
@property (nonatomic, copy) NSString *markClear;

PYInitializerTemplate(PYToolboxFeatureMarkTitle, title);

PYPropertyEqualTemplate(PYToolboxFeatureMarkTitle, NSString *, mark);
PYPropertyEqualTemplate(PYToolboxFeatureMarkTitle, NSString *, markUndo);
PYPropertyEqualTemplate(PYToolboxFeatureMarkTitle, NSString *, markClear);

@end

@interface PYToolboxFeatureMark : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) PYToolboxFeatureMarkTitle *title;
@property (nonatomic, strong) PYLineStyle *lineStyle;

PYInitializerTemplate(PYToolboxFeatureMark, mark);

PYPropertyEqualTemplate(PYToolboxFeatureMark, BOOL, show);
PYPropertyEqualTemplate(PYToolboxFeatureMark, PYToolboxFeatureMarkTitle *, title);
PYPropertyEqualTemplate(PYToolboxFeatureMark, PYLineStyle *, lineStyle);

@end

@interface PYToolboxFeatureDataZoomTitle : NSObject

@property (nonatomic, copy) NSString *dataZoom;
@property (nonatomic, copy) NSString *dataZoomReset;

PYInitializerTemplate(PYToolboxFeatureDataZoomTitle, title);

PYPropertyEqualTemplate(PYToolboxFeatureDataZoomTitle, NSString *, dataZoom);
PYPropertyEqualTemplate(PYToolboxFeatureDataZoomTitle, NSString *, dataZoomReset);

@end

@interface PYToolboxFeatureDataZoom : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) PYToolboxFeatureDataZoomTitle *title;

PYInitializerTemplate(PYToolboxFeatureDataZoom, dataZoom);

PYPropertyEqualTemplate(PYToolboxFeatureDataZoom, BOOL, show);
PYPropertyEqualTemplate(PYToolboxFeatureDataZoom, PYToolboxFeatureDataZoomTitle *, title);

@end

@interface PYToolboxFeatureDataView : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) BOOL readOnly;
@property (nonatomic, copy) NSArray *lang;

PYInitializerTemplate(PYToolboxFeatureDataView, dataView);

PYPropertyEqualTemplate(PYToolboxFeatureDataView, BOOL, show);
PYPropertyEqualTemplate(PYToolboxFeatureDataView, NSString *, title);
PYPropertyEqualTemplate(PYToolboxFeatureDataView, BOOL, readOnly);
PYPropertyEqualTemplate(PYToolboxFeatureDataView, NSArray *, lang);

@end

@interface PYToolboxFeatureMagicTypeTitle : NSObject

@property (nonatomic, copy) NSString *line;
@property (nonatomic, copy) NSString *bar;
@property (nonatomic, copy) NSString *stack;
@property (nonatomic, copy) NSString *tiled;
@property (nonatomic, copy) NSString *force;
@property (nonatomic, copy) NSString *chord;
@property (nonatomic, copy) NSString *pie;
@property (nonatomic, copy) NSString *funnel;

PYInitializerTemplate(PYToolboxFeatureMagicTypeTitle, title);

PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, line);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, bar);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, stack);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, tiled);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, force);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, chord);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, pie);
PYPropertyEqualTemplate(PYToolboxFeatureMagicTypeTitle, NSString *, funnel);

@end

@interface PYToolboxFeatureMagicType : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) PYToolboxFeatureMagicTypeTitle *title;
@property (nonatomic, copy) NSDictionary<NSString *, PYOption *> *option;
@property (nonatomic, copy) NSArray<NSString *> *type;

PYInitializerTemplate(PYToolboxFeatureMagicType, magicType);

PYPropertyEqualTemplate(PYToolboxFeatureMagicType, BOOL, show);
PYPropertyEqualTemplate(PYToolboxFeatureMagicType, PYToolboxFeatureMagicTypeTitle *, title);
PYPropertyEqualTemplate(PYToolboxFeatureMagicType, NSDictionary *, option);
PYPropertyEqualTemplate(PYToolboxFeatureMagicType, NSArray *, type);



@end

@interface PYToolboxFeatureRestore : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *title;

PYInitializerTemplate(PYToolboxFeatureRestore, restore);

PYPropertyEqualTemplate(PYToolboxFeatureRestore, BOOL, show);
PYPropertyEqualTemplate(PYToolboxFeatureRestore, NSString *, title);

@end

@interface PYToolboxFeatureSaveAsImage : NSObject

@property (nonatomic, assign, getter=isShow) BOOL show;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *lang;

PYInitializerTemplate(PYToolboxFeatureSaveAsImage, saveAsImage);

@end


/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Toolbox
 *
 */
@interface PYToolboxFeature : NSObject

@property (nonatomic, strong) PYToolboxFeatureMark *mark;
@property (nonatomic, strong) PYToolboxFeatureDataZoom *dataZoom;
@property (nonatomic, strong) PYToolboxFeatureDataView *dataView;
@property (nonatomic, strong) PYToolboxFeatureMagicType *magicType;
@property (nonatomic, strong) PYToolboxFeatureRestore *restore;
@property (nonatomic, strong, getter=getSaveAsImage) PYToolboxFeatureSaveAsImage *saveAsImage __deprecated_msg("Use PYEchartView `obtainEchartsImageWithType:completedBlock:` instead.");

PYInitializerTemplate(PYToolboxFeature, feature);

PYPropertyEqualTemplate(PYToolboxFeature, PYToolboxFeatureMark *, mark);
PYPropertyEqualTemplate(PYToolboxFeature, PYToolboxFeatureDataZoom *, dataZoom);
PYPropertyEqualTemplate(PYToolboxFeature, PYToolboxFeatureDataView *, dataView);
PYPropertyEqualTemplate(PYToolboxFeature, PYToolboxFeatureMagicType *, magicType);
PYPropertyEqualTemplate(PYToolboxFeature, PYToolboxFeatureRestore *, restore);

@end
