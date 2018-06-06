//
//  DDLog+CSLoggerExtension.h
//  CSLog
//
//  Created by ChaoSo on 2018/6/6.
//  Copyright © 2018年 ChaoSo. All rights reserved.
//

#import "DDLog.h"

@interface DDLog (CSLoggerExtension)
- (void)removeLogger:(NSUInteger)flag;
+ (void)removeLogger:(NSUInteger)flag;
@end
