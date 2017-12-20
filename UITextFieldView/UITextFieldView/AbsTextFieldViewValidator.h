//
//  AbsTextFieldViewValidator.h
//  UITextField
//
//  Created by LeiLuRong on 16/7/23.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextFieldValidatorMessage.h"

@interface AbsTextFieldViewValidator : NSObject

- (TextFieldValidatorMessage *)validatorWithInputSting:(NSString *)inputString;

@end
