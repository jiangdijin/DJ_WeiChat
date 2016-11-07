//
//  DJLoginController.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/3.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginController.h"
#import "DJLoginView.h"

@interface DJLoginController ()

@property (nonatomic ,weak) DJLoginView *LoginView;

/*
 *添加子控制器
 */
- (void)addChildView;

@end

@implementation DJLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加子控制器
    [self addChildView];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addChildView{
    
    DJLoginView *LoginView = [[DJLoginView alloc]init];
    
    self.LoginView = LoginView;
    

}

@end
