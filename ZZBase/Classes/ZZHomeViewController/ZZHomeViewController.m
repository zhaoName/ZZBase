//
//  ZZViewController.m
//  ZZBase
//
//  Created by zhaoName on 09/17/2019.
//  Copyright (c) 2019 zhaoName. All rights reserved.
//

#import "ZZHomeViewController.h"
#import "UIColor+Add.h"


@interface ZZHomeViewController ()

@end

@implementation ZZHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Home";
    self.view.backgroundColor = [UIColor MainRedColor];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIImageView *homeImageV =[[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    homeImageV.backgroundColor = UIColor.blackColor;
    
    homeImageV.image = [self imageWithName:@"pic2"];
    [self.view addSubview:homeImageV];
}

- (UIImage *)imageWithName:(NSString *)imageName
{
    // 图片全名，@2x @3x 也要带上
    imageName = [NSString stringWithFormat:@"%@@%dx.png", imageName, (int)[UIScreen mainScreen].scale];
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    NSString *zzBaseBunleName = bundle.infoDictionary[@"CFBundleName"];
    NSString *baseDirectory = [NSString stringWithFormat:@"%@.bundle", zzBaseBunleName];
    
    NSString *path = [bundle pathForResource:imageName ofType:nil inDirectory:baseDirectory];
    return [UIImage imageWithContentsOfFile:path];
}

@end
