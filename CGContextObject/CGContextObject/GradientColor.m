//
//  GradientColor.m
//  CGContextObject
//
//  Created by LeiLuRong on 15/11/16.
//
//  https://github.com/LeiLuRong
//  http://www.cnblogs.com/LeiLuRong/
//

#import "GradientColor.h"

@interface GradientColor ()

@property (nonatomic) CGGradientRef   gradientRef;

@end

@implementation GradientColor

+ (instancetype)gradientColorWithLocations:(CGFloat[])locations components:(CGFloat[])components count:(size_t)count {

    GradientColor *gradientColor = [[[self class] alloc] init];
    
    gradientColor.locations  = locations;
    gradientColor.components = components;
    gradientColor.count      = count;
    [gradientColor createCGGradient];
    
    return gradientColor;
}

- (void)createCGGradient {

    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    self.gradientRef           = CGGradientCreateWithColorComponents(colorSpace, self.components, self.locations, self.count);
    CGColorSpaceRelease(colorSpace);
}

- (void)dealloc {

    CGGradientRelease(self.gradientRef);
}

@end
