//
//  WKEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 30/12/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <WebKit/WebKit.h>
@class WKEchartsView;

@protocol WKEchartsViewDelegate <NSObject>

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
- (BOOL)echartsView:(WKEchartsView *)echartsView didReceivedLinkURL:(NSURL *)url;

/**
 *  When the options are loaded complete, this method will be called for user
 *
 *  @param echartsView The echatsView provide this action
 */
- (void)echartsViewDidFinishLoad:(WKEchartsView *)echartsView;
@end

@class PYOption, PYLoadingOption, PYNoDataLoadingOption;

@interface WKEchartsView : WKWebView<WKNavigationDelegate, WKUIDelegate>

@property (nonatomic, assign) CGSize divSize;

// You should set this property before `loadEcharts`, or it will be useless
@property (nonatomic, strong) PYNoDataLoadingOption *noDataLoadingOption;
@property (nonatomic, weak) id<WKEchartsViewDelegate> eDelegate;

/**
 *  Resize the main div in the `echarts.html`
 */
- (void)resizeDiv;

/**
 *  Refresh echarts not re-load echarts
 *  The option is the last option you had set
 */
- (void)refreshEcharts;

/**
 *  Refresh echart with the option
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
 *  Add the echart action handler
 *
 *  @param name  The echart event name
 *  @param block The block handler
 */
- (void)addHandlerForAction:(PYEchartAction)name withBlock:(PYEchartActionHandler)block;

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
 *  Load echart
 */
- (void)loadEcharts;

/**
 *  Set the option for echart
 *
 *  @param pyOption The echart option
 */
- (void)setOption:(PYOption *)pyOption;

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
