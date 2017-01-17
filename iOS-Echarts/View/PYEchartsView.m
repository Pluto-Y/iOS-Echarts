//
//  PYEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "PYEchartsView.h"
#import "PYAxis.h"
#import "PYLegend.h"
#import "PYOption.h"
#import "PYJsonUtil.h"
#import "PYLoadingOption.h"

@interface PYEchartsView() {
    NSString *bundlePath;
    NSString *localHtmlContents;
    CGFloat lastScale;
    CGFloat minWidth;
    CGPoint tapPoint;
    // This params store the handler of the echart actions
    NSMutableDictionary<NSString *, PYEchartActionHandler> *actionHandleBlocks;
    // This block will store for get image from echarts and will clear when the block is called
    void (^obtainImgCompletedBlock)(PY_IMAGE *image);
    
    PYEchartTheme _theme;
}

@property (nonatomic, assign) BOOL finishRender;

@end

@implementation PYEchartsView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initAll];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initAll];
    }
    return self;
}

#pragma mark - custom functions
#pragma mark 初始化
/// Initialize
- (void)initAll {
    bundlePath = [[NSBundle mainBundle] pathForResource:@"iOS-Echarts" ofType:@"bundle"];
    NSBundle *echartsBundle;
    if (bundlePath != nil) { // If 'iOS-Echarts' is installed by Cocoapods and don't use 'use_frameworks!' command
        echartsBundle = [NSBundle bundleWithPath:bundlePath];
    } else { // If 'iOS-Echarts' is installed manually or use 'use_frameworks!' command
#if TARGET_OS_IPHONE
        echartsBundle = [NSBundle mainBundle];
#elif TARGET_OS_MAC
        echartsBundle = [NSBundle bundleWithPath:[NSBundle mainBundle].resourcePath];
#endif
        
        // If 'iOS-Echarts' is install by Cocoapods and use 'use_frameworks!' command
        if ([echartsBundle pathForResource:@"echarts" ofType:@"html"] == nil) {
            NSArray *allFrameworks = [echartsBundle pathsForResourcesOfType:@"framework" inDirectory:@"Frameworks"];
            for (NSString *path in allFrameworks) {
                if ([path hasSuffix:@"iOS_Echarts.framework"]) { // if the framework name has suffix 'iOS_Echarts.framework', I think it's iOS-Echart's framework
                    bundlePath = [path stringByAppendingString:@"/iOS-Echarts.bundle"];
                    echartsBundle = [NSBundle bundleWithPath:bundlePath];
                    break;
                }
            }
        }
    }
#if TARGET_OS_IPHONE
    bundlePath = [echartsBundle bundlePath];
#elif TARGET_OS_MAC
    bundlePath = [echartsBundle resourcePath];
#endif
    NSString *urlString = [echartsBundle pathForResource:@"echarts" ofType:@"html"];
    localHtmlContents =[[NSString alloc] initWithContentsOfFile:urlString encoding:NSUTF8StringEncoding error:nil];
    
    if (localHtmlContents == nil || [localHtmlContents isEqualToString:@""]) {
        NSLog(@"Error: Can't load echart's files.");
    }
    
#if TARGET_OS_IPHONE
    self.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    self.scalesPageToFit = NO;
    // set the view background is transparent
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchGestureHandle:)];
    pinchGestureRecognizer.cancelsTouchesInView = NO;
    [self addGestureRecognizer:pinchGestureRecognizer];
   
#elif TARGET_OS_MAC
    self.frameLoadDelegate = self;
#endif
    _divSize = CGSizeZero;
    minWidth = self.frame.size.width - 10;
    _scalable = NO;
    _finishRender = NO;
    
    _maxWidth = NSIntegerMax;
    actionHandleBlocks = [[NSMutableDictionary alloc] init];
}

/**
 *  Set the option for echart
 *
 *  @param pyOption The echart option
 */
- (void)setOption:(PYOption *)pyOption {
    option = pyOption;
}

/**
 *  Load the web view request
 */
- (void)loadEcharts {
#if TARGET_OS_IPHONE
    [self loadHTMLString:localHtmlContents baseURL:[NSURL fileURLWithPath: bundlePath]];
#elif TARGET_OS_MAC
    [[self mainFrame] loadHTMLString:localHtmlContents baseURL:[NSURL fileURLWithPath: bundlePath]];
#endif
}

/**
 *  Call the js method
 *
 *  @param methodWithParam The format:`[instance.]methodname(params)`
 */
- (void)callJsMethods:(NSString *)methodWithParam {
#if TARGET_OS_IPHONE
    [self stringByEvaluatingJavaScriptFromString:methodWithParam];
#elif TARGET_OS_MAC
    [[self windowScriptObject] evaluateWebScript:methodWithParam];
#endif
}

/**
 *  Resize the main div in the `echarts.html`
 */
- (void)resizeDiv {
    float height = self.frame.size.height;
    float width = self.frame.size.width;
    if (!CGSizeEqualToSize(_divSize, CGSizeZero)) {
        height = _divSize.height;
        width = _divSize.width;
    } else {
        _divSize = CGSizeMake(width, height);
    }
    NSString *divSizeCss = [NSString stringWithFormat:@"'height:%.0fpx;width:%.0fpx;'", height, width];
    NSString *js = [NSString stringWithFormat:@"%@(%@)", @"resizeDiv", divSizeCss];
    [self stringByEvaluatingJavaScriptFromString:js];
}

#pragma mark - Echarts methods
/**
 *  Refresh echarts not re-load echarts
 *  The option is the last option you had set
 */
- (void)refreshEcharts {
    [self callJsMethods:@"myChart.refresh()"];
}

/**
 *  Refresh echart with the option
 *  You can call this method for refreshing not re-load the echart
 *
 *  @param newOption EChart's option
 */
- (void)refreshEchartsWithOption:(PYOption *)newOption {
    NSString *jsonStr = [PYJsonUtil getJSONString:newOption];
    PYLog(@"jsonStr:%@", jsonStr);
    [self callJsMethods:[NSString stringWithFormat:@"refreshWithOption(%@)", jsonStr]];
}

/**
 *  Set theme for echarts
 *  You can set the themes by echarts support, which prefix is `PYEchartTheme`
 *
 *  @param theme The theme name
 */
- (void)setTheme:(PYEchartTheme) theme {
    _theme = theme;
    PYLog(@"Theme is %@", theme);
    [self callJsMethods:[NSString stringWithFormat:@"myChart.setTheme(eval('%@'));", _theme]];
}

/**
 *  Add the echart action handler
 *
 *  @param name  The echart event name
 *  @param block The block handler
 */
- (void)addHandlerForAction:(PYEchartAction)name withBlock:(PYEchartActionHandler)block {
    [actionHandleBlocks setObject:block forKey:name];
    [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler(%@)",name]];
}

/**
 *  Remove the echart action hander
 *
 *  @param name The echart event name
 */
- (void)removeHandlerForAction:(PYEchartAction)name {
    [actionHandleBlocks removeObjectForKey:name];
    [self callJsMethods:[NSString stringWithFormat:@"removeEchartActionHandler(%@)",name]];
}

/**
 *  Obtain the screen of echarts view with type
 *
 *  @param type           The type you want get, now just support `PYEchartsViewImageTypeJEPG` and `PYEchartsViewImageTypePNG`.
 *  @param completedBlock A block called when get the image from echarts.
 */
- (void)obtainEchartsImageWithType:(PYEchartsViewImageType)type completed:(void(^)(PY_IMAGE *image))completedBlock {
    if (![type isEqualToString:PYEchartsViewImageTypePNG] && ![type isEqualToString:PYEchartsViewImageTypeJEPG]) {
        NSLog(@"Error: Echarts does not support this type --- %@, so it will be obtain JEPG type", type);
        type = PYEchartsViewImageTypeJEPG;
    }
    if (completedBlock != nil) {
        obtainImgCompletedBlock = completedBlock;
        NSString *js = [NSString stringWithFormat:@"%@('%@')", @"obtainEchartsImage", type];
        [self stringByEvaluatingJavaScriptFromString:js];
    }
}

/**
 *  Option for the loading screen, show a loading label text.
 *
 *  @param loadingOption The loading options control the appearance of the loading screen that covers the plot area on chart operations.
 */
- (void)showLoading:(PYLoadingOption *)loadingOption {
    NSString *loadingOptionStr = [PYJsonUtil getJSONString:loadingOption];
    PYLog(@"loadingOption:%@", loadingOptionStr);
    [self callJsMethods:[NSString stringWithFormat:@"myChart.showLoading(%@)",loadingOptionStr]];
}

/**
 *  Hide loading screen
 */
- (void)hideLoading {
    [self callJsMethods:@"myChart.hideLoading()"];
}

/**
 *  Clear the drawing content. Instances are available after Clearing.
 */
- (void)clearEcharts {
    [self callJsMethods:@"myChart.clear()"];
}

#pragma mark - Delegate

#if TARGET_OS_IPHONE
#pragma mark UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    if ([[webView stringByEvaluatingJavaScriptFromString:@"document.readyState"] isEqualToString:@"complete"]) {
        // UIWebView object has fully loaded.
        self.finishRender = YES;
        if (option == nil) {
            NSLog(@"Warning: The option is nil.");
            [self callJsMethods:@"initEchartView()"];
            return ;
        }
        
        [self resizeDiv];
        
        NSString *jsonStr = [PYJsonUtil getJSONString:option];
        NSString *js;
        PYLog(@"%@",jsonStr);
        
        if (_noDataLoadingOption != nil) {
            PYLog(@"nodataLoadingOption:%@", [PYJsonUtil getJSONString:_noDataLoadingOption]);
            NSString *noDataLoadingOptionString = [NSString stringWithFormat:@"{\"noDataLoadingOption\":%@ \n}", [PYJsonUtil getJSONString:_noDataLoadingOption]];
            js = [NSString stringWithFormat:@"%@(%@, %@)", @"loadEcharts", jsonStr, noDataLoadingOptionString];
        } else {
            js = [NSString stringWithFormat:@"%@(%@)", @"loadEcharts", jsonStr];
        }
        [webView stringByEvaluatingJavaScriptFromString:js];
        [self setTheme:_theme];
        for (NSString * name in actionHandleBlocks.allKeys) {
            PYLog(@"%@", [NSString stringWithFormat:@"addEchartActionHandler('%@')",name]);
            [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler('%@')",name]];//
        }
        if (self.eDelegate && [self.eDelegate respondsToSelector:@selector(echartsViewDidFinishLoad:)]) {
            [self.eDelegate echartsViewDidFinishLoad:self];
        }
        
        // Disable user selection
        [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.style.webkitUserSelect='none';"];
        
        // Disable callout
        [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.style.webkitTouchCallout='none';"];
    } else {
        __weak __typeof(self) weakSelf = self;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.05 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            __typeof(self) strongSelf = weakSelf;
            if (!strongSelf.finishRender) {
                [self loadEcharts];
            }
        });
    }
}

/**
 *  This method the echart action, the http link in the echarts and other links
 *  If the scheme is the http, it will be opened by the sifari
 *  If the scheme is pyechartaction, it means that url is the echart event, then it will call the block to handle the action
 *  If the sheeme is others, use the default action
 */
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    NSURL *url = request.URL;
    PYLog(@"%@", url);
    if ([[url.scheme lowercaseString] hasPrefix:@"http"]) {
        if (_eDelegate != nil && [_eDelegate respondsToSelector:@selector(echartsView:didReceivedLinkURL:)]) {
            PYLog(@"Delegate will resolve the request!");
            return [_eDelegate echartsView:self didReceivedLinkURL:url];
        }
        return NO;
    }
    if (![[url.scheme lowercaseString] hasPrefix:@"pyechartaction"]) {
        return YES;
    }
    
    // get the action from the path
    NSString *actionType = url.host;
    
    if ([kEchartActionObtainImg isEqualToString:actionType]) {
        if (obtainImgCompletedBlock != nil) {
            __weak typeof(obtainImgCompletedBlock) block = obtainImgCompletedBlock;
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
                PY_IMAGE *image = nil;
                NSString *imgBase64Str = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
                NSURL *url = [NSURL URLWithString:imgBase64Str];
                NSData *imgData = [NSData dataWithContentsOfURL:url];
                image = [PY_IMAGE imageWithData:imgData];
                dispatch_sync(dispatch_get_main_queue(), ^{
                    block(image);
                });
            });
            
        }
    } else {
        // deserialize the request JSON
        NSString *jsonDictString = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        // decode the json params to dictionary
        NSData *paramData = [jsonDictString dataUsingEncoding:NSUTF8StringEncoding];
        NSError *err;
        NSDictionary *paramsDic;
        if (jsonDictString != nil && ![jsonDictString isEqualToString:@""]) {
            paramsDic = [NSJSONSerialization JSONObjectWithData:paramData options:NSJSONReadingMutableLeaves error:&err];
            if(err) {
                NSLog(@"Json decode failed：%@",err);
                paramsDic = nil;
            }
        }
        
        // Check the action handle actions, if exists the block the invoke the block
        if (actionHandleBlocks[actionType] != nil) {
            PYEchartActionHandler hanler = (PYEchartActionHandler)actionHandleBlocks[actionType];
            hanler(paramsDic);
        }
    }
    return NO;
}

#elif TARGET_OS_MAC
- (void)webView:(WebView *)webView didFinishLoadForFrame:(WebFrame *)frame {
    if ([[webView stringByEvaluatingJavaScriptFromString:@"document.readyState"] isEqualToString:@"complete"]) {
        if (option == nil) {
            NSLog(@"Warning: The option is nil.");
            [self callJsMethods:@"initEchartView()"];
            return ;
        }
        [self resizeDiv];
        
        NSString *jsonStr = [PYJsonUtil getJSONString:option];
        NSString *js;
        PYLog(@"%@",jsonStr);
        
        if (_noDataLoadingOption != nil) {
            PYLog(@"nodataLoadingOption:%@", [PYJsonUtil getJSONString:_noDataLoadingOption]);
            NSString *noDataLoadingOptionString = [NSString stringWithFormat:@"{\"noDataLoadingOption\":%@ \n}", [PYJsonUtil getJSONString:_noDataLoadingOption]];
            js = [NSString stringWithFormat:@"%@(%@, %@)", @"loadEcharts", jsonStr, noDataLoadingOptionString];
        } else {
            js = [NSString stringWithFormat:@"%@(%@)", @"loadEcharts", jsonStr];
        }
        //    //    [webView stringByEvaluatingJavaScriptFromString:js];
        //    [[webView windowScriptObject] evaluateWebScript:@"alert('123')"];
        //    [[webView windowScriptObject] callWebScriptMethod:@"alert" withArguments:@[@"234"]];
        [[webView windowScriptObject] evaluateWebScript:js];
        
        for (NSString * name in actionHandleBlocks.allKeys) {
            PYLog(@"%@", [NSString stringWithFormat:@"addEchartActionHandler('%@')",name]);
            [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler('%@')",name]];//
        }
        if (self.eDelegate && [self.eDelegate respondsToSelector:@selector(echartsViewDidFinishLoad:)]) {
            [self.eDelegate echartsViewDidFinishLoad:self];
        }
    } else {
        __weak __typeof(self) weakSelf = self;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.05 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            __typeof(self) strongSelf = weakSelf;
            if (!strongSelf.finishRender) {
                [self loadEcharts];
            }
        });
    }
}

#endif

#if TARGET_OS_IPHONE
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

/**
 *  The pinch gesture handle
 */
- (void)pinchGestureHandle:(id)sender {
    if (!_scalable) {
        return;
    }
    UIPinchGestureRecognizer *recognizer = (UIPinchGestureRecognizer *)sender;
    int touchCount = (int)[recognizer numberOfTouches];
    // Reset the scale valeu when the event is end
    if([recognizer state] == UIGestureRecognizerStateEnded) {
        lastScale = 1.0;
        return;
    }
    CGFloat scale = 1.0 - (lastScale - [recognizer scale]);
    if (_divSize.width >= _maxWidth && scale > 1) {
        return;
    }
    if (_divSize.width <= minWidth && scale < 1) {
        return;
    }
    _divSize.width *= scale;
    
    if (_divSize.width < minWidth) {
        _divSize.width = minWidth;
    } else if (_divSize.width > _maxWidth) {
        _divSize.width = _maxWidth;
    }
    if (touchCount == 2) {
        CGPoint p1 = [recognizer locationOfTouch: 0 inView:self];
        CGPoint p2 = [recognizer locationOfTouch: 1 inView:self];
        CGPoint newCenter = CGPointMake((p1.x+p2.x)/2,(p1.y+p2.y)/2);
        PYLog(@"%@", NSStringFromCGPoint(newCenter));
        [self.scrollView setContentOffset:CGPointMake((self.scrollView.contentOffset.x + newCenter.x) * scale - newCenter.x, self.scrollView.contentOffset.y)];
    }
    [self resizeDiv];
    
    lastScale = [recognizer scale];
}

#endif

@end
