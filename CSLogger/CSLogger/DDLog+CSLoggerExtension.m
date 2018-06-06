//
//  DDLog+CSLoggerExtension.m
//  CSLog
//
//  Created by ChaoSo on 2018/6/6.
//  Copyright © 2018年 ChaoSo. All rights reserved.
//

#import "DDLog+CSLoggerExtension.h"
#import <CocoaLumberjack/DDLog.h>

@implementation DDLog (CSLoggerExtension)
- (void)removeLogger:(NSUInteger)flag
{
   for (id<DDLogger> log in self.allLoggers)
   {
       if ([log respondsToSelector:@selector(getFlag)])
       {
           NSUInteger logFlag = [log performSelector:@selector(getFlag)];
           if (flag == logFlag)
           {
               [self removeLogger:log];
           }
       }
   }
   
}

+ (void)removeLogger:(NSUInteger)flag
{
    for (id<DDLogger> log in self.allLoggers)
    {
        if ([log respondsToSelector:@selector(getFlag)])
        {
            NSUInteger logFlag = [log performSelector:@selector(getFlag)];
            if (flag == logFlag)
            {
                [DDLog removeLogger:log];
            }
        }
    }
    
}
@end
