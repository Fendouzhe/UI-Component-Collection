//
//  CustomDrawingView.h
//  DrawRectObject
//
//  Created by LeiLuRong on 16/7/30.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawRectObject.h"

@interface CustomDrawingView : UIView

/**
 *  The Draw rect object, used by subClass.
 */
@property (nonatomic, strong) DrawRectObject *drawRectObject;

/**
 *  Setup the drawing styles, used by subClass.
 */
- (void)setupDrawingStyles;

@end
