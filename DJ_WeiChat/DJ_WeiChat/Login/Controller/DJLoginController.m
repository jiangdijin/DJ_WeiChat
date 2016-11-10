//
//  DJLoginController.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/3.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginController.h"
#import "DJLoginBackgrountView.h"
#import "UIBarButtonItem+Item.h"
#import "UILabel+DJLable.h"
#import "DJLoginView.h"
#import "DJOtherLoginView.h"

@interface DJLoginController ()

/*
 *背景view
 */
@property (nonatomic ,weak) DJLoginBackgrountView *LoginBackgrountView;

/*
 *登录view
 */
@property (nonatomic ,weak) DJLoginView *LoginView;
/*
 *登录界面的frame
 */
@property (nonatomic ,assign) CGRect LoginViewframe;


/*
 *第三方登录view
 */
@property (nonatomic ,weak) DJOtherLoginView *OtherLoginView;
/*
 *第三方登录界面的frame
 */
@property (nonatomic ,assign) CGRect OtherLoginViewframe;


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

#pragma LoginViewframe懒加载
-(CGRect)LoginViewframe{
    if (IS_IPHONE) {
        _LoginViewframe = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height * 0.7);
    }else{
        _LoginViewframe = CGRectMake((DJScreenBounds.size.width - 414) / 2.0, (DJScreenBounds.size.height - 736) / 2.0, 414, 736 * 0.7);
    }
    return _LoginViewframe;
}

#pragma mark  OtherLoginViewframe懒加载
-(CGRect)OtherLoginViewframe{
    if (IS_IPHONE) {
        _OtherLoginViewframe = CGRectMake(0, self.LoginView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - self.LoginView.frame.size.height);
    }else{
        _OtherLoginViewframe = CGRectMake((DJScreenBounds.size.width - 414) / 2.0, self.LoginView.frame.origin.y + self.LoginView.frame.size.height, 414,(DJScreenH -  (self.LoginView.frame.origin.y + self.LoginView.frame.size.height)) / 2.0);
    }
    return _OtherLoginViewframe;
}

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
    
    
    //添加背景view
    DJLoginBackgrountView *LoginBackgrountView = [[DJLoginBackgrountView alloc]initWithFrame:self.view.frame];
    
    self.LoginBackgrountView = LoginBackgrountView;
    [self.view addSubview:LoginBackgrountView];
    
    
    //添加登录界面
    DJLoginView *LoginView = [[DJLoginView alloc]initWithFrame:self.LoginViewframe];

    _LoginView = LoginView;

   [self.view addSubview:self.LoginView];
    
    //添加第三方界面
    DJOtherLoginView *OtherLoginView = [[DJOtherLoginView alloc]initWithFrame:self.OtherLoginViewframe];
    OtherLoginView.backgroundColor = [UIColor redColor];
    _OtherLoginView = OtherLoginView;
    
    [self.view addSubview:self.OtherLoginView];

}

#pragma mark ---注册
- (void)register{
    NSLog(@"%s,%@",__func__,@"注册");
}

@end
