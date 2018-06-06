//
//  SHDDContextWhitelistFilterLogFormatter.m
//  zhibo
//
//  Created by Chao So on 2017/7/31.
//  Copyright © 2017年 Qianjun Network Technology. All rights reserved.
//

#import "CSContextWhitelistFilterLogFormatter.h"

@interface CSContextWhitelistFilterLogFormatter()
@property (strong, nonatomic) NSDateFormatter *dateFormatter;
@end

@implementation CSContextWhitelistFilterLogFormatter

- (instancetype)init {
    if ((self = [super init])) {
        self.dateFormatter = [[NSDateFormatter alloc] init];
        [self.dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss:SSS"];
        [self.dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4]; // 10.4+ style        
    }
    return self;
}

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    if ([self isOnWhitelist:logMessage->_context]) {
        NSString *dateAndTime = [_dateFormatter stringFromDate:(logMessage->_timestamp)];        
        return [NSString stringWithFormat:@"%@%@", dateAndTime, logMessage->_message];
    } else {
        return nil;
    }
}
@end
