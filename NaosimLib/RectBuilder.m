//
//  RectBuilder.m
//  NaosimLib
//
//  Created by Naosim on 13/02/19.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "RectBuilder.h"
@implementation RectBuilder

- (id)initWithRect:(CGRect)rect {
    self = [super init];
    if(self) {
        _x = rect.origin.x;
        _y = rect.origin.y;
        _width = rect.size.width;
        _height = rect.size.height;
    }
    return self;
}
+ (RectBuilder*)builderWithRect:(CGRect)rect {
    return [[RectBuilder alloc] initWithRect:rect];
}

+ (RectBuilder*)builderWithView:(UIView*)view {
    return [RectBuilder builderWithRect:view.frame];
}

- (RectBuilder*)x:(CGFloat)x {
    _x = x;
    return self;
}

- (RectBuilder*)y:(CGFloat)y {
    _y = y;
    return self;
}

- (RectBuilder*)width:(CGFloat)width {
    _width = width;
    return self;
}


- (RectBuilder*)height:(CGFloat)height {
    _height = height;
    return self;
}

- (RectBuilder*)point:(CGPoint)point {
    _x = point.x;
    _y = point.y;
    return self;
}
- (RectBuilder*)size:(CGSize)size {
    _width = size.width;
    _height = size.height;
    return self;
}

- (RectBuilder*)xAdd:(CGFloat)value {
    _x += value;
    return self;
}

- (RectBuilder*)yAdd:(CGFloat)value {
    _y += value;
    return self;
}

- (RectBuilder*)widthAdd:(CGFloat)value {
    _width += value;
    return self;
}

- (RectBuilder*)heightAdd:(CGFloat)value {
    _height += value;
    return self;
}

- (RectBuilder*)pointAdd:(CGPoint)point {
    _x += point.x;
    _y += point.y;
    return self;
}

- (RectBuilder*)sizeAdd:(CGSize)size {
    _width += size.width;
    _height += size.height;
    return self;
}


- (RectBuilder*)xBy:(CGFloat)rate {
    _x *= rate;
    return self;
}

- (RectBuilder*)yBy:(CGFloat)rate {
    _y *= rate;
    return self;
}


- (RectBuilder*)widthBy:(CGFloat)rate {
    _width *= rate;
    return self;
}


- (RectBuilder*)heightBy:(CGFloat)rate {
    _height *= rate;
    return self;
}

- (CGRect)create {
    return CGRectMake(self.x, self.y, self.width, self.height);
}
@end
