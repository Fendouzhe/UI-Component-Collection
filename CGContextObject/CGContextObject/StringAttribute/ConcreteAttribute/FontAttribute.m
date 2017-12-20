//
//  FontAttribute.m
//  AttributeString
//
//  Created by LeiLuRong on 15/8/3.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import "FontAttribute.h"

@implementation FontAttribute

- (NSString *)attributeName {
    
    return NSFontAttributeName;
}

- (id)attributeValue {

    if (self.font) {
        
        return self.font;
        
    } else {
    
        return [UIFont systemFontOfSize:12.f];
    }
}

@end
