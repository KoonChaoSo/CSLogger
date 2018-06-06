//
//  SHDDLogConfigurator.h
//  zhibo
//
//  Created by Chao So on 2017/8/2.
//  Copyright © 2017年 Qianjun Network Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

@interface CSLoggerAssembler : NSObject

+ (id<DDLogger>)createDDFileLogDefault;
+ (id<DDLogger>)createCSFileLogger:(NSInteger)flag;


//- (NSString *)getFilePathWith:(NSInteger)flag;
@property (strong, nonatomic) NSMutableDictionary *ddLogStore;
@end
