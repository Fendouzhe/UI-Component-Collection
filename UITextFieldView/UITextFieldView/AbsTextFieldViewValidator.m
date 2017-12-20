//
//  AbsTextFieldViewValidator.m
//  UITextField
//
//  Created by LeiLuRong on 16/7/23.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "AbsTextFieldViewValidator.h"

@implementation AbsTextFieldViewValidator

- (TextFieldValidatorMessage *)validatorWithInputSting:(NSString *)inputString {
    
   return textFieldValidatorMessageIsValid(YES, nil);
}

@end
