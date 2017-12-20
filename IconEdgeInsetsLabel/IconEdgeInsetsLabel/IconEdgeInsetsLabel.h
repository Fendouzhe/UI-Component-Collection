//
//  IconEdgeInsetsLabel.h
//  EdgeInsetLabel
//
//  Created by LeiLuRong on 16/6/22.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    
    kIconAtLeft,
    kIconAtRight,
    
} EIconEdgeDirection;

@interface IconEdgeInsetsLabel : UILabel

@property (nonatomic, strong) UIView             *iconView;
@property (nonatomic)         UIEdgeInsets        edgeInsets;
@property (nonatomic)         EIconEdgeDirection  direction;
@property (nonatomic)         CGFloat             gap;

- (void)sizeToFitWithText:(NSString *)text;

@end
