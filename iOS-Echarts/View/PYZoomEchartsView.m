//
//  PYZoomEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/5.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYZoomEchartsView.h"
#import "PYOption.h"
#import "PYDataZoom.h"

@interface PYZoomEchartsView() {
    PYDataZoom *dataZoom;
    CGFloat lastRangeWidth;
    CGFloat lastStart;
    CGFloat lastEnd;
    CGFloat panStartPointX;
}

@end

@implementation PYZoomEchartsView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
#if TARGET_OS_IPHONE
        UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchHandle:)];
        [self addGestureRecognizer:pinchGesture];
        
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panHandle:)];
        [self addGestureRecognizer:panGesture];
#elif TARGET_OS_MAC
#endif
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
#if TARGET_OS_IPHONE
        UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchHandle:)];
        [self addGestureRecognizer:pinchGesture];
        
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panHandle:)];
        [self addGestureRecognizer:panGesture];
#elif TARGET_OS_MAC
#endif
    }
    return self;
}

#if TARGET_OS_IPHONE
/**
 *  The pinch gesture handle scription
 *  To deal with the data zoom
 */
- (void)pinchHandle:(UIPinchGestureRecognizer *)gesture {
    
    if ([gesture state] == UIGestureRecognizerStateEnded) {
        lastRangeWidth = [dataZoom.end floatValue] - [dataZoom.start floatValue];
        return;
    }

    CGFloat scale = 1.0 / [gesture scale];
    CGFloat middle = ([dataZoom.start floatValue] + [dataZoom.end floatValue]) / 2.0;
    CGFloat rangeWidth = [dataZoom.end floatValue] - [dataZoom.start floatValue];
    
    if (rangeWidth >= 100 && scale > 1) {
        return;
    } else if (rangeWidth <= 0 && scale < 1) {
        return;
    }
    
    rangeWidth = scale * lastRangeWidth;
    if (rangeWidth > 100) {
        rangeWidth = 100;
    } else if (rangeWidth < 0) {
        rangeWidth = 0;
    }
    
    if (middle - (rangeWidth / 2.0) < 0) {
        lastStart = 0;
        lastEnd = rangeWidth;
    } else if (middle + (rangeWidth / 2.0) > 100) {
        lastStart = 100 - rangeWidth;
        lastEnd = 100;
    } else {
        lastStart = middle - (rangeWidth / 2.0);
        lastEnd = middle + (rangeWidth / 2.0);
    }
    
    dataZoom.start = @(lastStart);
    dataZoom.end = @(lastEnd);
    option.dataZoom = dataZoom;
    [self callJsMethods:[NSString stringWithFormat:@"changeDataZoomRange(%.2f, %.2f)", [dataZoom.start floatValue], [dataZoom.end floatValue]]];
}

- (void)panHandle:(UIPanGestureRecognizer *)gesture {
    switch ([gesture state]) {
        case UIGestureRecognizerStateBegan: {
            panStartPointX = [gesture translationInView:self].x;
            PYLog(@"lastStart: %.2f, lastEnd: %.2f", lastStart, lastEnd);
            break;
        }
        case UIGestureRecognizerStateChanged: {
            CGFloat currentPointX = [gesture translationInView:self].x;
            CGFloat deltaX = (currentPointX - panStartPointX) / self.frame.size.width * 100;
            PYLog(@"%.2f", deltaX);
            if (deltaX > 0 && [dataZoom.end floatValue] + deltaX > 100 ) {
                return;
            } else if (deltaX < 0 && [dataZoom.start floatValue] + deltaX < 0) {
                return;
            }
            dataZoom.start = @(lastStart + deltaX);
            dataZoom.end = @(lastEnd + deltaX);
            [self callJsMethods:[NSString stringWithFormat:@"changeDataZoomRange(%.2f, %.2f)", [dataZoom.start floatValue], [dataZoom.end floatValue]]];
            break;
        }
        case UIGestureRecognizerStateEnded: {
            lastStart = [dataZoom.start floatValue];
            lastEnd = [dataZoom.end floatValue];
            break;
        }
        default:
            break;
    }
}

#elif TARGET_OS_MAC
#endif

- (void)setOption:(PYOption *)pyOption {
    if (pyOption.dataZoom == nil) {
        dataZoom = [[PYDataZoom alloc] init];
        dataZoom.show = NO;
        lastStart = 0;
        lastEnd = 100;
        dataZoom.start = @(lastStart);
        dataZoom.end = @(lastEnd);
        dataZoom.realtime = YES;
        pyOption.dataZoom = dataZoom;
    } else {
        lastStart = [pyOption.dataZoom.start floatValue];
        lastEnd = [pyOption.dataZoom.end floatValue];
        lastRangeWidth = lastEnd - lastStart;
        dataZoom = pyOption.dataZoom;
    }
    option = pyOption;
}

@end
