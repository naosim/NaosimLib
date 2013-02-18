//
//  RectBuilder.m
//  NaosimLib
//
//  Created by Naosim on 13/02/19.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "RectBuilder.h"
@implementation RectBuilder
+ (RectBuilder*)builderWithRect:(CGRect)rect {
    return [[[[[RectBuilder new] x:rect.origin.x] y:rect.origin.y] width:rect.size.width] height:rect.size.height];
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
