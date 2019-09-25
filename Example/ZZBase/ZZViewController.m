//
//  ZZViewController.m
//  ZZBase
//
//  Created by zhaoName on 09/17/2019.
//  Copyright (c) 2019 zhaoName. All rights reserved.
//

#import "ZZViewController.h"
#import "UIColor+Add.h"
#import "ZZHomeViewController.h"

@interface ZZViewController ()

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor BGCCCCCCColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:[ZZHomeViewController new]];
    nv.navigationItem.title = @"HHHHHH";
    [self presentViewController:nv animated:YES completion:nil];
}

@end
