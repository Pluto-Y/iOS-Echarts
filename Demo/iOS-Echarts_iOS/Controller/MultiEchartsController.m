//
//  PYMutilEchartsController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/28/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "MultiEchartsController.h"
#import "EchartsViewCell.h"

static NSString *const tableViewIdentifier = @"EchartsViewCell";

@interface MultiEchartsController ()<UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation MultiEchartsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"多图表";
    [_tableView registerNib:[UINib nibWithNibName:tableViewIdentifier bundle:nil] forCellReuseIdentifier:tableViewIdentifier];
}

#pragma mark UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EchartsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewIdentifier forIndexPath:indexPath];
    PYOption *option;
    if (indexPath.row == 0) {
        option = [PYLineDemoOptions stackedLineOption];
    } else if (indexPath.row == 1) {
        option = [PYBarDemoOptions stackedBarOption];
    } else {
        option = [PYFunnelDemoOptions multipleFunnel2Option];
    }
    [cell.echartView setOption:option];
    [cell.echartView loadEcharts];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

@end
