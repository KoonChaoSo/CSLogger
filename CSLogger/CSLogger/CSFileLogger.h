//
//  CSFileLogger.h
//  CSLog
//
//  Created by ChaoSo on 2018/6/4.
//  Copyright © 2018年 ChaoSo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>
@interface CSFileLogger : DDFileLogger
@property (nonatomic, assign) NSUInteger flag;
- (instancetype)initWithFlag:(NSUInteger)flag;
@end

@interface CSFileManagerDefault : DDLogFileManagerDefault
- (instancetype)initWithLogsDirectory:(NSString *)logsDirectory
                             fileName:(NSString *)name;
@end
