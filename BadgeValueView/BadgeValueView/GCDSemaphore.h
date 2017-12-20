//
//  GCDSemaphore.h
//  GCD
//
//  http://home.cnblogs.com/u/LeiLuRong/
//  https://github.com/LeiLuRong
//
//  Created by LeiLuRong on 15/3/15.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDSemaphore : NSObject

@property (strong, readonly, nonatomic) dispatch_semaphore_t dispatchSemaphore;

#pragma 初始化
- (instancetype)init;
- (instancetype)initWithValue:(long)value;

#pragma mark - 用法
- (BOOL)signal;
- (void)wait;
- (BOOL)wait:(int64_t)delta;

@end
