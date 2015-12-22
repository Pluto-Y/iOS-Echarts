//
//  PYEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PYOption;

@protocol PYEchartsViewDelegate <NSObject>

@optional
-(void)echartClick:(NSDictionary *)paramDic pointInView:(CGPoint) point;
-(void)echartDbClick:(NSDictionary *)paramDic;

@end


@interface PYEchartsView : UIWebView<UIWebViewDelegate>

@property (assign, nonatomic) UIEdgeInsets padding;
@property (assign, nonatomic) CGSize divSize;
@property (assign, nonatomic) CGFloat maxWidth;
@property (assign, nonatomic) BOOL scalable;

@property (retain, nonatomic) id<PYEchartsViewDelegate> echartDelegate;

/**
 *  加载视图
 */
-(void)loadEcharts;

/**
 *  设置Echart的Option(最主要的跟Echart交互的参数)
 *
 *  @param option EChart的option
 */
-(void)setOption:(PYOption *)pyOption;

/**
 *  根据新给的PYOption刷新Echarts
 *  通过该方法可以保证重新加载Echarts而是刷新
 *
 *  @param newOption EChart的option
 */
-(void)refreshEchartsWithOption:(PYOption *)newOption;

/**
 *  刷新图表，而不是重新加载(即恢复到最初设置的option)
 */
-(void)refreshEcharts;


@end
