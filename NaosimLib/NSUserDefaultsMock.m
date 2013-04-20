//
//  NSUserDefaultsMock.m
//  NaosimLib
//
//  Created by 藤田 直 on 13/04/20.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "NSUserDefaultsMock.h"

@implementation NSUserDefaultsMock
- (double)doubleForKey:(NSString *)defaultName {
    return [(NSNumber*)[dict objectForKey:defaultName] doubleValue];
}

- (void)setDouble:(double)value forKey:(NSString *)defaultName {
    [dict setObject:[NSNumber numberWithDouble:value] forKey:defaultName];
}
@end
