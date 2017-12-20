//
//  TextFieldValidatorMessage.m
//  ZiPeiYi
//
//  Created by LeiLuRong on 16/1/8.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "TextFieldValidatorMessage.h"

@implementation TextFieldValidatorMessage

+ (TextFieldValidatorMessage *)textFieldValidatorMessageWithErrorMessage:(NSString *)errorMessage isValidString:(BOOL)isValidString {

    TextFieldValidatorMessage *message = [[self class] new];
    message.errorMessage               = errorMessage;
    message.isValidString              = isValidString;
    
    return message;
}

@end
