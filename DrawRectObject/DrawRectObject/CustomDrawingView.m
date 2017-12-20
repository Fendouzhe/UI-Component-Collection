//
//  CustomDrawingView.m
//  DrawRectObject
//
//  Created by LeiLuRong on 16/7/30.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "CustomDrawingView.h"

@implementation CustomDrawingView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.drawRectObject  = [DrawRectObject new];
        self.backgroundColor = [UIColor clearColor];
        [self setupDrawingStyles];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    [self.drawRectObject bindWithCGContext:UIGraphicsGetCurrentContext()];
}

- (void)setupDrawingStyles {
    
}

@end
