//
//  DJLoginController.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/3.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginController.h"
#import "DJLoginView.h"
#import "UIBarButtonItem+Item.h"
#import "UILabel+DJLable.h"

@interface DJLoginController ()

@property (nonatomic ,weak) DJLoginView *LoginView;
/*
 *添加子控制器
 */
- (void)addChildView;

/*
 *设置导航条上的内容
 */
- (void)setUpNavigationBar;


/*
 *点击注册按钮
 */
- (void)register;
@end

@implementation DJLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航条上的内容
    [self setUpNavigationBar];

    //添加子控制器
    [self addChildView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 设置导航条上的内容
- (void)setUpNavigationBar{
    
    
    //标题
    UILabel *title = [UILabel setNavigationBarTitleLableWithText:@"登录" color:[UIColor whiteColor] Font:DJTitleFont];
    
    [self.navigationItem setTitleView:title];
    
    
    //右边注册按钮
    UIBarButtonItem *RightItem = [[UIBarButtonItem alloc]initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(register)];
    
    self.navigationItem.rightBarButtonItem = RightItem;
    

}

#pragma mark 添加子控制器
-(void)addChildView{
    
    DJLoginView *LoginView = [[DJLoginView alloc]initWithFrame:self.view.frame];
    
    self.LoginView = LoginView;
    
    [self.view addSubview:LoginView];
    

}

#pragma mark ---注册
- (void)register{
    NSLog(@"%s,%@",__func__,@"注册");
}

@end
