//
//  WKEchartsView.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 30/12/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "WKEchartsView.h"
#import "PYJsonUtil.h"

@interface WKWebView() <WKScriptMessageHandler>

@property (readwrite, copy) WKWebViewConfiguration *configuration;

@end

@interface WKEchartsView() {
    // This params store the handler of the echart actions
    NSMutableDictionary<PYEchartAction, PYEchartActionHandler> *actionHandleBlocks;
    // This block will store for get image from echarts and will clear when the block is called
    void (^obtainImgCompletedBlock)(PY_IMAGE *image);
    PYOption *option;
    NSString *bundlePath;
    NSString *localHtmlContents;
    PYEchartTheme _theme;
}

@property (nonatomic, assign) BOOL finishRender;

@end

@implementation WKEchartsView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initAll];
    }
    return self;
}

- (void)dealloc {
    [[self configuration].userContentController removeAllUserScripts];
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
    
    self.navigationDelegate = self;
    self.UIDelegate = self;
#if TARGET_OS_IPHONE
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = NO;
    
    // set the view background is transparent
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
#endif
    
    // Disable magnification in WKWebView.
    // The userScript is used for the property which named `scalesPageToFit` in `UIWebView`
    NSString *fitJS = @"var meta = document.createElement('meta'); "
    "meta.setAttribute('name', 'viewport'); "
    "meta.setAttribute('content', 'width=device-width'); "
    "document.getElementsByTagName('head')[0].appendChild(meta);";

    WKUserContentController *userContentController = self.configuration.userContentController;
    NSArray *fitUserScripts = [userContentController.userScripts filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.source = %@", fitJS]];
    if (0 == fitUserScripts.count) {
        WKUserScript *fitUserScript = [[WKUserScript alloc] initWithSource:fitJS injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:NO];
        [userContentController addUserScript:fitUserScript];
    }
    
    // Disable callouts in WKWebView.
    // Javascript that disables pinch-to-zoom by inserting the HTML viewport meta tag into <head>
    NSString *calloutJS = @"var style = document.createElement('style'); "
    "style.type = 'text/css'; "
    "style.innerText = '*:not(input):not(textarea) { -webkit-user-select: none; -webkit-touch-callout: none; }'; "
    "var head = document.getElementsByTagName('head')[0]; "
    "head.appendChild(style);";
    
    NSArray *calloutScripts = [userContentController.userScripts filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.source = %@", calloutJS]];
    if (0 == calloutScripts.count) {
        WKUserScript *calloutScript = [[WKUserScript alloc] initWithSource:calloutJS injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:NO];
        [userContentController addUserScript:calloutScript];
    }
    
    _finishRender = NO;
    
    actionHandleBlocks = [[NSMutableDictionary alloc] init];
}

/**
 *  Load the web view request
 */
- (void)loadEcharts {
    [self loadHTMLString:localHtmlContents baseURL:[NSURL fileURLWithPath: bundlePath]];
}

/**
 *  Call the js method
 *
 *  @param methodWithParam The format:`[instance.]methodname(params)`
 */
- (void)callJsMethods:(NSString *)methodWithParam {
    [self evaluateJavaScript:methodWithParam completionHandler:nil];
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
    [self callJsMethods:js];
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
    // If the handler is exists, remove it firtly.
    [[self configuration].userContentController removeScriptMessageHandlerForName:name];
    [[self configuration].userContentController addScriptMessageHandler:self name:name];
    [actionHandleBlocks setObject:block forKey:name];
    [self callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler(%@)",name]];
}

/**
 *  Remove the echart action hander
 *
 *  @param name The echart event name
 */
- (void)removeHandlerForAction:(PYEchartAction)name {
    [[self configuration].userContentController removeScriptMessageHandlerForName:name];
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
        // If the handler is exists, remove it firtly.
        [[self configuration].userContentController removeScriptMessageHandlerForName:kEchartActionObtainImg];
        [[self configuration].userContentController addScriptMessageHandler:self name:kEchartActionObtainImg];
        obtainImgCompletedBlock = completedBlock;
        NSString *js = [NSString stringWithFormat:@"%@('%@')", @"obtainEchartsImage", type];
        [self callJsMethods:js];
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

/**
 *  Set the option for echart
 *
 *  @param pyOption The echart option
 */
- (void)setOption:(PYOption *)pyOption {
    option = pyOption;
}

#pragma mark - Delegate
#pragma mark WKNavigationDelegate
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    __weak __typeof(self) weakSelf = self;
    [webView evaluateJavaScript:@"document.readyState" completionHandler:^(id result, NSError *error) {
        // UIWebView object has fully loaded.
        __typeof(self) strongSelf = weakSelf;
        if ([result isEqualToString:@"complete"]) {
            strongSelf.finishRender = YES;
            if (option == nil) {
                NSLog(@"Warning: The option is nil.");
                [strongSelf callJsMethods:@"initEchartView()"];
                return ;
            }
            [strongSelf resizeDiv];
            
            NSString *jsonStr = [PYJsonUtil getJSONString:option];
            NSString *js;
            PYLog(@"%@",jsonStr);
            
            if (strongSelf.noDataLoadingOption != nil) {
                PYLog(@"nodataLoadingOption:%@", [PYJsonUtil getJSONString:strongSelf.noDataLoadingOption]);
                NSString *noDataLoadingOptionString = [NSString stringWithFormat:@"{\"noDataLoadingOption\":%@ \n}", [PYJsonUtil getJSONString:strongSelf.noDataLoadingOption]];
                js = [NSString stringWithFormat:@"%@(%@, %@)", @"loadEcharts", jsonStr, noDataLoadingOptionString];
            } else {
                js = [NSString stringWithFormat:@"%@(%@)", @"loadEcharts", jsonStr];
            }
            [strongSelf callJsMethods:js];
            [strongSelf setTheme:_theme];
            for (NSString * name in actionHandleBlocks.allKeys) {
                PYLog(@"%@", [NSString stringWithFormat:@"addEchartActionHandler('%@')",name]);
                [strongSelf callJsMethods:[NSString stringWithFormat:@"addEchartActionHandler('%@')",name]];//
            }
            if (strongSelf.eDelegate && [strongSelf.eDelegate respondsToSelector:@selector(echartsViewDidFinishLoad:)]) {
                [strongSelf.eDelegate echartsViewDidFinishLoad:strongSelf];
            }
        } else {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.05 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                if (!strongSelf.finishRender) {
                    [self loadEcharts];
                }
            });
        }
    }];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSURL *url = webView.URL;
    PYLog(@"%@", url);
    
    if ([[url.scheme lowercaseString] hasPrefix:@"http"]) {
        if (_eDelegate != nil && [_eDelegate respondsToSelector:@selector(echartsView:didReceivedLinkURL:)]) {
            PYLog(@"Delegate will resolve the request!");
            if ([_eDelegate echartsView:self didReceivedLinkURL:url]) {
                decisionHandler(WKNavigationActionPolicyAllow);
            } else {
                decisionHandler(WKNavigationActionPolicyCancel);
            }
            return;
        }
        decisionHandler(WKNavigationActionPolicyCancel);
        return;
    }
    
    if (![[url.scheme lowercaseString] hasPrefix:@"pyechartaction"]) {
        decisionHandler(WKNavigationActionPolicyAllow);
        return;
    }
    decisionHandler(WKNavigationActionPolicyCancel);
}

- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler {
    completionHandler();
    PYLog(@"%@", message);
}

#pragma mark WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    PYLog(@"name:%@, body:%@", message.name, message.body);
    if ([kEchartActionObtainImg isEqualToString:message.name]) {
        if (obtainImgCompletedBlock != nil) {
            __weak typeof(obtainImgCompletedBlock) block = obtainImgCompletedBlock;
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
                PY_IMAGE *image = nil;
                NSString *imgBase64Str = message.body;
                NSURL *url = [NSURL URLWithString:imgBase64Str];
                NSData *imgData = [NSData dataWithContentsOfURL:url];
#if TARGET_OS_IPHONE
                image = [PY_IMAGE imageWithData:imgData];
#elif TARGET_OS_MAC
                image = [[PY_IMAGE alloc] initWithData:imgData];
#endif
                dispatch_sync(dispatch_get_main_queue(), ^{
                    block(image);
                });
            });
            [[self configuration].userContentController removeScriptMessageHandlerForName:kEchartActionObtainImg];
        }
    } else {
        PYEchartActionHandler block = actionHandleBlocks[message.name];
        // Check the action handle actions, if exists the block the invoke the block
        if (block != nil) {
            NSDictionary *params = (NSDictionary *)message.body;
            block(params);
        }
    }
}


@end
