//
//  PYForceSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYSeries.h"
#import "PYNodes.h"
#import "PYCategories.h"
#import "PYLinks.h"

@interface PYForceNodes : PYNodes

@property (strong, nonatomic) NSMutableArray *initial;
@property (assign, nonatomic) BOOL fixX;
@property (assign, nonatomic) BOOL fixY;
@property (assign, nonatomic) BOOL ignore;
@property (assign, nonatomic) BOOL draggable;
@property (strong, nonatomic) NSNumber *category;

@end

@interface PYForceSeries : PYSeries

@property (strong, nonatomic) NSMutableArray<PYCategories *> *categories;
@property (strong, nonatomic) NSMutableArray<PYForceSeries *> *nodes;
@property (strong, nonatomic) NSMutableArray<PYLinks *> *links;
@property (strong, nonatomic) NSMutableArray *matrix;
@property (strong, nonatomic) NSArray *center;
@property (strong, nonatomic) NSNumber *size;
@property (strong, nonatomic) NSNumber *minRadius;
@property (strong, nonatomic) NSNumber *maxRadius;
@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symbolSize;
@property (strong, nonatomic) NSString *linkSymbol;
@property (strong, nonatomic) NSArray *linkSymbolSize;
@property (strong, nonatomic) NSNumber *scaling;
@property (strong, nonatomic) NSNumber *gravity;
@property (assign, nonatomic) BOOL draggable;
@property (assign, nonatomic) BOOL large;
@property (assign, nonatomic) BOOL useWorker;
@property (strong, nonatomic) NSNumber *steps;
@property (strong, nonatomic) id roam;

@end
