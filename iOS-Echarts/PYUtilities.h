//
//  PYUtilities.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#ifndef PYUtilities_h
#define PYUtilities_h

//#define __DEBUG__ 1
#ifdef __DEBUG__
#define PYLog(...) NSLog(__VA_ARGS__)
#else
#define PYLog(...) do{} while(0)
#endif

typedef NSString *PYInterval;
static PYInterval PYIntervalAuto = @"auto";
static PYInterval PYIntervalAll  = @"all";

typedef NSString *PYSymbol;
static PYSymbol PYSymbolNone           = @"none";
static PYSymbol PYSymbolCircle         = @"circle";
static PYSymbol PYSymbolRectangle      = @"rectangle";
static PYSymbol PYSymbolTriangle       = @"triangle";
static PYSymbol PYSymbolDiamond        = @"diamond";
static PYSymbol PYSymbolEmptyCircle    = @"emptyCircle";
static PYSymbol PYSymbolEmptyRectangle = @"emptyRectangle";
static PYSymbol PYSymbolEmptyTriangle  = @"emptyTriangle";
static PYSymbol PYSymbolEmptyDiamond   = @"emptyDiamond";
static PYSymbol PYSymbolHeart          = @"heart";
static PYSymbol PYSymbolDroplet        = @"droplet";
static PYSymbol PYSymbolPin            = @"pin";
static PYSymbol PYSymbolArrow          = @"arrow";
static PYSymbol PYSymbolStar5          = @"star5";

typedef NSString *PYSort;
static PYSort PYSortNone       = @"none";
static PYSort PYSortAscending  = @"ascending";
static PYSort PYSortDescending = @"descending";

#endif /* PYUtilities_h */
