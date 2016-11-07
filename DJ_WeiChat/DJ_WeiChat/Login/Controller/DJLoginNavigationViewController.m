//
//  DJLoginNavigationViewController.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginNavigationViewController.h"

@interface DJLoginNavigationViewController ()

@end

@implementation DJLoginNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航条为全透明
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];

    self.navigationBar.shadowImage = [UIImage new];
    self.navigationBar.translucent = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 初始化类的时候调用
+(void)initialize{
    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[self]];
    
    NSMutableDictionary *Attributes = [NSMutableDictionary dictionary];
    
    Attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    Attributes[NSFontAttributeName] = DJItemFont;
    
    [item setTitleTextAttributes:Attributes forState:UIControlStateNormal];
}



@end
