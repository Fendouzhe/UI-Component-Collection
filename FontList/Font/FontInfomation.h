//
//  FontInfomation.h
//  LeiLuRong
//
//  Created by LeiLuRong on 15/2/11.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FontInfomation : NSObject

/**
 *  系统字体信息
 *
 *  @return 系统字体的字典信息
 */
+ (NSDictionary *)systomFontNameList;

/**
 *  字体标题
 *
 *  @return 所有字体标题
 */
+ (NSArray *)fontTitles;

@end
