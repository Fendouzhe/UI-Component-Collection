//
//  ViewController.m
//  BaseButton
//
//  Created by LeiLuRong on 15/8/27.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import "ViewController.h"
#import "PressButton.h"

@interface ViewController () <PressButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    PressButton *button      = [[PressButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    button.layer.borderWidth = 0.5f;
    button.delegate          = self;
    button.center            = self.view.center;
    [self.view addSubview:button];
}

- (void)pressButtonEvent:(PressButton *)pressButton {

    NSLog(@"%@", pressButton);
}

@end
