//
//  ForegroundColorAttribute.m
//  AttributeString
//
//  Created by LeiLuRong on 15/8/3.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import "ForegroundColorAttribute.h"

@implementation ForegroundColorAttribute

- (NSString *)attributeName {
    
    return NSForegroundColorAttributeName;
}

- (id)attributeValue {
    
    if (self.color) {
        
        return self.color;
        
    } else {
        
        return [UIColor blackColor];
    }
}

@end
