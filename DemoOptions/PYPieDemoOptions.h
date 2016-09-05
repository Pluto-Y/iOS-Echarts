//
//  PYPieDemoOptions.h
//  iOS-Echarts
//
//  Created by lizhi on 16/9/5.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PYPieDemoOptions : NSObject

/**  标准饼图 */
+ (PYOption *)standardPieOption;
/**  标准环形饼图 */
+ (PYOption *)doughnutPieOption;
/**  嵌套饼图 */
+ (PYOption *)nestedPieOption;
/**  南丁格尔玫瑰图 */
+ (PYOption *)nightingalesRoseDiagramPieOption;
/**  环形图2 */
+ (PYOption *)doughnut2PieOption;
/**  环形图3 */
+ (PYOption *)doughnut3PieOption;
/**  时间轴饼图 */
+ (PYOption *)timelinePieOption;
/**  饼图 */
+ (PYOption *)pieDemoOption;
/**  千层饼图 */
+ (PYOption *)multilayerPieOption;

@end
