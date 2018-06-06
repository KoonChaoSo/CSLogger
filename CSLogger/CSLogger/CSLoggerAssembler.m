//
//  SHDDLogConfigurator.m
//  zhibo
//
//  Created by Chao So on 2017/8/2.
//  Copyright © 2017年 Qianjun Network Technology. All rights reserved.
//

#import "CSLoggerAssembler.h"

#import "CSFileLogger.h"
#import "CSContextWhitelistFilterLogFormatter.h"
@implementation CSLoggerAssembler
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ddLogStore = [NSMutableDictionary dictionaryWithCapacity:0];
    }
    return self;
}

//TODO:直接给协议
+ (id<DDLogger>)createCSFileLogger:(NSInteger)flag
{
    //添加DDLog 允许自定义的log类型白名单
    CSContextWhitelistFilterLogFormatter *contextFilter = [[CSContextWhitelistFilterLogFormatter alloc] init];
    [contextFilter addToWhitelist:flag];
    CSFileLogger *customLogger = [[CSFileLogger alloc] initWithFlag:flag];
    [customLogger setLogFormatter:contextFilter];
    customLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    customLogger.logFileManager.maximumNumberOfLogFiles = 10;
    return customLogger;
}

+ (id)createDDFileLogDefault
{
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init]; // File Logger
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling

    fileLogger.logFileManager.maximumNumberOfLogFiles = 10;
    return fileLogger;
}



@end
