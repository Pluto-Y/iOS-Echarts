//
//  PYEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

@class PYEchartsView;

@protocol PYEchartsViewDelegate <NSObject>

@optional
/**
 *  When the title link or other http links occur, this method will be called for user
 *  If return NO, you can do anything you can do with this url
 *  If return YES, the `PYEchartsView` will open this url
 *
 *  @param echartsView The echatsView provide this action
 *  @param url         The HTTP request url
 *
 *  @return The same as the description
 */
- (BOOL)echartsView:(PYEchartsView *)echartsView didReceivedLinkURL:(NSURL *)url;

/**
 *  When the options are loaded complete, this method will be called for user
 *
 *  @param echartsView The echatsView provide this action
 */
- (void)echartsViewDidFinishLoad:(PYEchartsView *)echartsView;
@end

@class PYOption, PYLoadingOption, PYNoDataLoadingOption;

@interface PYEchartsView : PY_WEB_VIEW<PY_WEB_DELEGATE> {
    PYOption *option;
}

@property (nonatomic, assign) PY_EDGE_INSET padding;
@property (nonatomic, assign) CGSize divSize;
@property (nonatomic, assign) CGFloat maxWidth;
@property (nonatomic, assign) BOOL scalable;

@property (nonatomic, weak) id<PYEchartsViewDelegate> eDelegate;

// You should set this property before `loadEcharts`, or it will be useless
@property (nonatomic, strong) PYNoDataLoadingOption *noDataLoadingOption;

/**
 *  Resize the main div in the `echarts.html`
 */
- (void)resizeDiv;

/**
 *  Load echart
 */
- (void)loadEcharts;

/**
 *  Set the option for Echarts
 *
 *  @param option The option of EChart
 */
- (void)setOption:(PYOption *)pyOption;

/**
 *  Refresh echar with the option
 *  You can call this method for refreshing not re-load the echart
 *
 *  @param newOption EChart's option
 */
- (void)refreshEchartsWithOption:(PYOption *)newOption;

/**
 *  Set theme for echarts
 *  You can set the themes by echarts support, which prefix is `PYEchartTheme`
 *
 *  @param theme The theme name
 */
- (void)setTheme:(PYEchartTheme) theme;

/**
 *  Refresh echarts not re-load echarts
 *  The option is the last option you had set
 */
- (void)refreshEcharts;

/**
 *  Call the js method
 *
 *  @param methodWithParam The format:`[instance.]methodname(params)`
 */
- (void)callJsMethods:(NSString *)methodWithParam;

/**
 *  Add the echart action handler
 *
 *  @param name  The echart event name
 *  @param block The block handler
 */
-(void)addHandlerForAction:(PYEchartAction)name withBlock:(PYEchartActionHandler)block;

/**
 *  Remove the echart action hander
 *
 *  @param name The echart event name
 */
- (void)removeHandlerForAction:(PYEchartAction)name;

/**
 *  Obtain the screen of echarts view with type
 *
 *  @param type           The type you want get, now just support `PYEchartsViewImageTypeJEPG` and `PYEchartsViewImageTypePNG`.
 *  @param completedBlock A block called when get the image from echarts.
 */
- (void)obtainEchartsImageWithType:(PYEchartsViewImageType)type completed:(void(^)(PY_IMAGE *image))completedBlock;

/**
 *  Option for the loading screen, show a loading label text.
 *
 *  @param loadingOption The loading options control the appearance of the loading screen that covers the plot area on chart operations.
 */
- (void)showLoading:(PYLoadingOption *)loadingOption;

/**
 *  Hide loading screen
 */
- (void)hideLoading;

/**
 *  Clear the drawing content. Instances are available after Clearing.
 */
- (void)clearEcharts;

@end
