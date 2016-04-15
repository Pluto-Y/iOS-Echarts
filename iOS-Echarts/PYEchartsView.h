//
//  PYEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const PYEchartActionClick;
extern NSString * const PYEchartActionDbClick;
extern NSString * const PYEchartActionMapSelected;
extern NSString * const PYEchartActionDataZoom;
extern NSString * const PYEchartActionLegendSelected;
extern NSString * const PYEchartActionMagicTypeChange;

@class PYOption, PYLoadingOption;

typedef void (^PYEchartActionHandler) (NSDictionary *params);

@interface PYEchartsView : UIWebView<UIWebViewDelegate> {
    PYOption *option;
}

@property (assign, nonatomic) UIEdgeInsets padding;
@property (assign, nonatomic) CGSize divSize;
@property (assign, nonatomic) CGFloat maxWidth;
@property (assign, nonatomic) BOOL scalable;

/**
 *  Resize the main div in the `echarts.html`
 */
-(void)resizeDiv;

/**
 *  Load echart
 */
-(void)loadEcharts;

/**
 *  设置Echart的Option(最主要的跟Echart交互的参数)
 *
 *  @param option EChart的option
 */
-(void)setOption:(PYOption *)pyOption;

/**
 *  Refresh echar with the option
 *  You can call this method for refreshing not re-load the echart
 *
 *  @param newOption EChart's option
 */
-(void)refreshEchartsWithOption:(PYOption *)newOption;

/**
 *  Refresh echarts not re-load echarts
 *  The option is the last option you had set
 */
-(void)refreshEcharts;

/**
 *  Call the js method
 *
 *  @param methodWithParam The format:`[instance.]methodname(params)`
 */
-(void)callJsMethods:(NSString *)methodWithParam;

/**
 *  Add the echart action handler
 *
 *  @param name  The echart event name
 *  @param block The block handler
 */
-(void)addHandlerForAction:(NSString *) name withBlock:(PYEchartActionHandler) block;

/**
 *  Remove the echart action hander
 *
 *  @param name The echart event name
 */
-(void)removeHandlerForAction:(NSString *)name;

/**
 *  Option for the loading screen, show a loading label text.
 *
 *  @param loadingOption The loading options control the appearance of the loading screen that covers the plot area on chart operations.
 */
-(void)showLoading:(PYLoadingOption *)loadingOption;

@end
