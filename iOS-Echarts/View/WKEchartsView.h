//
//  WKEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 30/12/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <WebKit/WebKit.h>

@interface WKEchartsView : WKWebView<WKNavigationDelegate, WKUIDelegate>

@property (nonatomic, assign) CGSize divSize;

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
 *  Set the option for echart
 *
 *  @param pyOption The echart option
 */
- (void)setOption:(PYOption *)pyOption;

@end
