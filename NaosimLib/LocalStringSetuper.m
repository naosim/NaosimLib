//
//  LocalStringSetuper.m
//  NaosimLib
//
//  Created by 藤田 直 on 13/02/23.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "LocalStringSetuper.h"

@implementation LocalStringSetuper
- (void)setupWithBaseView:(UIView*)view {
    if([view isKindOfClass:UILabel.class]) {
        [self setupLabel:(UILabel*)view];
    } else if([view isKindOfClass:UISegmentedControl.class]) {
        [self setupWithSegmentedControl:(UISegmentedControl*)view];
    }
    
    // サブビューに適用
    for(UIView* subView in [view subviews]) {
        [self setupWithBaseView:subView];
    }
}

- (void)setupLabel:(UILabel*)label {
    if([self isLocalString:label.text]) {
        label.text = NSLocalizedString(label.text, @"");
    }
}

- (void)setupWithSegmentedControl:(UISegmentedControl*)c {
    for(int i = 0; i < [c numberOfSegments]; i++) {
        NSString* title = [c titleForSegmentAtIndex:i];
        if([self isLocalString:title]) {
            [c setTitle:NSLocalizedString(title, @"") forSegmentAtIndex:i];
        }
    }
}

- (BOOL)isLocalString:(NSString*)str {
    return [str rangeOfString:@"#_"].location == 0;
}
@end
