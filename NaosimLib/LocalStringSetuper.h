//
//  LocalStringSetuper.h
//  NaosimLib
//
//  Created by 藤田 直 on 13/02/23.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 UILable.text等が"#_hoge"になっているものを探して、
 NSLocalizedString(@"hoge", @"")に置換する。
 現在多応済みのクラス
 - UILabel
 - UISegmentedControl
 */
@interface LocalStringSetuper : NSObject
/// すべてのサブビューに多言語を適用する
- (void)setupWithBaseView:(UIView*)view;
@end
