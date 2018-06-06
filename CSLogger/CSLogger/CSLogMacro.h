//
//  SHDDLogMacro.h
//  zhibo
//
//  Created by Chao So on 2017/7/31.
//  Copyright © 2017年 Qianjun Network Technology. All rights reserved.
//



/*
 //上传API
 #define NEW_LOG_FINISH_UPLOAD(A,B,C,D) [SHDDlogManager uploadLog:A anchorId:B type:C flag:D]
 
 //日志API
 #define <#文件夹路径名称#> <#名称（纯数字，唯一，例如：(1 << 6)）#>
 #define <#日志输出级别（必须等于上面那个“文件夹名称”）#> <#文件夹路径名称#>
 #define <#打印函数名#>(frmt, ...) LOG_MAYBE(LOG_ASYNC_ENABLED, ddLogLevel, <#日志输出级别#>, <#文件夹路径名称#>, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
 
 //使用说明
 1、初始化：Appdelegate 的setupDDLog设置[DDLog addLog:SHLOG_ADMIN_FLAG];
 2、打日志：在需要的地方打上自定义的日志：比如SH_PAY_DDLOG(@"ooooo");
 3、上传日志：NEW_LOG_FINISH_UPLOAD(@"", @"", @"201", PLAY_LOGS_FILE_FLAG); 在Viewcontroller里面有一个启动app自动上传的
 */



#ifndef SHDDLogMacro_h
#define SHDDLogMacro_h


#if __has_include(<CocoaLumberjack/CocoaLumberjack.h>)
#import <CocoaLumberjack/CocoaLumberjack.h>
#else
#import "DDLog.h"
#endif

static const DDLogLevel ddLogLevel = DDLogLevelAll;

/////////////////////////// 测试
#define SHLOG_TEST_FLAG   (1000)
#define SHLOG_TEST_LEVEL   (SHLOG_TEST_FLAG)
#define SHLOG_TEST_DDLOG(frmt, ...) LOG_MAYBE(LOG_ASYNC_ENABLED, ddLogLevel, SHLOG_TEST_FLAG,SHLOG_TEST_LEVEL, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

#define SHLOG_TEST_FLAG2   (1001)
#define SHLOG_TEST_LEVEL2   (SHLOG_TEST_FLAG2)
#define SHLOG_TEST_DDLOG2(frmt, ...) LOG_MAYBE(LOG_ASYNC_ENABLED, ddLogLevel, SHLOG_TEST_FLAG2,SHLOG_TEST_LEVEL2, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
#endif /* SHDDLogMacro_h */
