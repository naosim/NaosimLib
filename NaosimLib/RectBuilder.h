//
//  RectBuilder.h
//  NaosimLib
//
//  Created by Naosim on 13/02/19.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RectBuilder : NSObject {
    CGFloat _x;
    CGFloat _y;
    CGFloat _width;
    CGFloat _height;
}
@property (nonatomic, assign, readonly)CGFloat x;
@property (nonatomic, assign, readonly)CGFloat y;
@property (nonatomic, assign, readonly)CGFloat width;
@property (nonatomic, assign, readonly)CGFloat height;

+ (RectBuilder*)builderWithRect:(CGRect)rect;
+ (RectBuilder*)builderWithView:(UIView*)view;

// set
- (RectBuilder*)x:(CGFloat)x;
- (RectBuilder*)y:(CGFloat)y;
- (RectBuilder*)width:(CGFloat)width;
- (RectBuilder*)height:(CGFloat)height;
- (RectBuilder*)point:(CGPoint)point;
- (RectBuilder*)size:(CGSize)size;

// add
- (RectBuilder*)xAdd:(CGFloat)value;
- (RectBuilder*)yAdd:(CGFloat)value;
- (RectBuilder*)widthAdd:(CGFloat)value;
- (RectBuilder*)heightAdd:(CGFloat)value;
- (RectBuilder*)pointAdd:(CGPoint)point;
- (RectBuilder*)sizeAdd:(CGSize)size;

// by
- (RectBuilder*)xBy:(CGFloat)rate;
- (RectBuilder*)yBy:(CGFloat)rate;
- (RectBuilder*)widthBy:(CGFloat)rate;
- (RectBuilder*)heightBy:(CGFloat)rate;

- (CGRect)create;
@end
