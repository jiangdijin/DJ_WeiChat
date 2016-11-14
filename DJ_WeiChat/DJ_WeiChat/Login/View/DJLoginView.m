//
//  DJLoginView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginView.h"
#define DJMargin (0.07 * self.frame.size.height)
#define DJTextColor [UIColor whiteColor]
#define DJLoginViewFrame

@interface DJLoginView ()<UITextFieldDelegate>
{    
    UILabel *_usernameLable;//用户名
    UITextField *_usernameText;//用户名输入框
    UILabel *_passwordLable;//密码
    UITextField *_passwordText;//密码输入框
    UIButton *_Login;//登录按钮
    UIButton *_forgetPW;//忘记密码按钮
    UIView *_line1;//分割线1
    UIView *_line2;//分割线2
    UIButton *_showPW;//是否显示密码
}

//私有方法
- (void)setUpChildView;//初始化子控制器
- (void)setUpChildContent;//设置子控制器的内容
- (void)setUpIconConstraint;//设置icon的constraint
- (void)setUpUsernameLableConstraint;//设置usernameLable的constraint
- (void)setUpusernametextConstrain;//设置usernametext的constraint
- (void)setUpline1Constrain;//line1的constrain
- (void)setUppasswordLableContrain;//设置passwordlable的constrain
- (void)setUppasswordTextContrain;//设置passwordtext的constrain
- (void)setUpline2Constrain;//line2的constrain
- (void)setUpLoginConstraint;//设置登录按钮的constraint
- (void)setUpforgetPWConstraint;//设置忘记密码按钮的constraint


@end

@implementation DJLoginView



#pragma mark 初始化frame方法
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //设置子控制器
        [self setUpChildView];
        
        //设置子控制器的内容
        [self setUpChildContent];
    }
    return self;
}

#pragma mark 加载子控制器的时候调用
-(void)layoutSubviews{
    [super layoutSubviews];
    
    //设置头像的大小;
    [self setUpIconConstraint];
    
    //设置usernameLable的大小
    [self setUpUsernameLableConstraint];
    
    //设置usernametext的大小
    [self setUpusernametextConstrain];
    
    //设置line1的大小
    [self setUpline1Constrain];
    
    //设置passwordLable的大小
    [self setUppasswordLableContrain];
    
    //设置passwordText的大小
    [self setUppasswordTextContrain];
    
    //设置line2的大小
    [self setUpline2Constrain];
    
    //设置登录按钮的大小
    [self setUpLoginConstraint];
    
    //设置忘记密码按钮的constraint
    [self setUpforgetPWConstraint];
  
}

#pragma mark-----------------私有方法---------------

#pragma mark 添加子控制器
-(void)setUpChildView{
    //头像
    _Icon = [[UIImageView alloc]init];
    _Icon.backgroundColor = [UIColor redColor];
    [self addSubview:_Icon];
    
    //用户名
    _usernameLable = [[UILabel alloc]init];
    [self addSubview:_usernameLable];
    
    //用户名输入框
    _usernameText = [[UITextField alloc]init];
    [self addSubview:_usernameText];
    
    //密码
    _passwordLable = [[UILabel alloc]init];
    [self addSubview:_passwordLable];
    
    //密码输入框
    _passwordText = [[UITextField alloc]init];
    [self addSubview:_passwordText];
    
    //登录按钮
    _Login = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_Login];
    
    //忘记密码按钮
    _forgetPW = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_forgetPW];
    
    //分割线1
    _line1 = [[UIView alloc]init];
    [self addSubview:_line1];
    
    //分割线2
    _line2 = [[UIView alloc]init];
    [self addSubview:_line2];
    
    //是否显示密码
    _showPW = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_showPW];
    
}

#pragma mark 设置子控制器
-(void)setUpChildContent{
    //设置usernameLable的内容
    _usernameLable.text = @"账号";
    _usernameLable.font = DJTextFont;
    _usernameLable.textColor = DJTextColor;
    [_usernameLable sizeToFit];
    
    //usernametext
    _usernameText.placeholder = @"username";
    _usernameText.textColor = DJTextColor;
    _usernameText.font = DJTextFont;
    _usernameText.delegate = self;
    
    //line1
    _line1.backgroundColor = DJTextColor;
    
    //passwordLable
    _passwordLable.text = @"密码";
    _passwordLable.textColor = DJTextColor;
    _passwordLable.font = DJTextFont;
    [_passwordLable sizeToFit];
    
    //passwordText
    _passwordText.placeholder = @"password";
    _passwordText.textColor = DJTextColor;
    _passwordText.font = DJTitleFont;
    _passwordText.clearButtonMode = UITextFieldViewModeAlways;
    _passwordText.secureTextEntry = YES;
    
    //line2
    _line2.backgroundColor = DJTextColor;
    
    //login
    [_Login setTitle:@"登录" forState:UIControlStateNormal];
    _Login.titleLabel.font = DJTitleFont;
    [_Login setBackgroundColor:[UIColor colorWithRed:58.0/255 green:157.0/255 blue:82.0/255 alpha:1.0]];
    [_Login addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    _Login.layer.cornerRadius = 5;
    _Login.adjustsImageWhenHighlighted = YES;
    
    //_forgetPW
    [_forgetPW setTitle:@"忘记密码?" forState:UIControlStateNormal];
    _forgetPW.titleLabel.font = DJFont11;
    [_forgetPW addTarget:self action:@selector(forgetClick) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark 设置头像Constraint
-(void)setUpIconConstraint{
    CGFloat IconWH = self.frame.size.width / 3.0 ;
    //_Icon居中
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_Icon attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
    //Icon顶部
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_Icon attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0f constant:3 * DJMargin];
    
    //Icon高度
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_Icon attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:0 constant:IconWH];
    
    //Icon宽度
    NSLayoutConstraint *widchConstraint = [NSLayoutConstraint constraintWithItem:_Icon attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:0 constant:IconWH];
    
    //iOS 6.0或者7.0调用addConstraints
    //[self.view addConstraints:@[leftConstraint, rightConstraint, topConstraint, heightConstraint]];
    
    //iOS 8.0以后设置active属性值
    centerConstraint.active = YES;
    topConstraint.active = YES;
    heightConstraint.active = YES;
    widchConstraint.active = YES;
    
    self.Icon.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置usernameLable的Constraint
-(void)setUpUsernameLableConstraint{
    //设置左边距
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_usernameLable attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant: 2 * DJMargin];
    //设置上边距
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_usernameLable attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_Icon attribute:NSLayoutAttributeBottom multiplier:1.0 constant:2 * DJMargin];
    
    leftConstraint.active = YES;
    topConstraint.active = YES;
    
    _usernameLable.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置usernametext的Constraint
-(void)setUpusernametextConstrain{
    //设置左边距
    NSLayoutConstraint *leftConstrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.5 * DJMargin];
    
    //设置右边距
//    NSLayoutConstraint *RightConstrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant: -2 * DJMargin];
    //设置宽度
     NSLayoutConstraint *widthConstrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant: self.frame.size.width - 4.5 * DJMargin - _usernameLable.frame.size.width];
    
    //设置上边界
    NSLayoutConstraint *topContrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
   
    //设置下边界
    NSLayoutConstraint *bottomContrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    
    leftConstrain.active = YES;
//    RightConstrain.active = YES;
    widthConstrain.active = YES;
    topContrain.active = YES;
    bottomContrain.active = YES;
    
    _usernameText.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置分割线1的constrain
-(void)setUpline1Constrain{
    //设置左边
    NSLayoutConstraint *leftContrain = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    //设置右边
    NSLayoutConstraint *rightContrain = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_usernameText attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    
    //设置上边距
    NSLayoutConstraint *topContrain = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.1 * DJMargin];
    
    //设置高度
    NSLayoutConstraint *heightContrain = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:1];
    
    leftContrain.active = YES;
    rightContrain.active = YES;
    topContrain.active = YES;
    heightContrain.active = YES;
    
    _line1.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置分割线2的constrain
-(void)setUpline2Constrain{
    //设置左边
    NSLayoutConstraint *leftContrain = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_passwordLable attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    //设置右边
    NSLayoutConstraint *rightContrain = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_passwordText attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    
    //设置上边距
    NSLayoutConstraint *topContrain = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_passwordText attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.1 * DJMargin];
    
    //设置高度
    NSLayoutConstraint *heightContrain = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:1];
    
    leftContrain.active = YES;
    rightContrain.active = YES;
    topContrain.active = YES;
    heightContrain.active = YES;
    
    _line2.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置passwordlable的constrain
-(void)setUppasswordLableContrain{
    //设置左边距
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_passwordLable attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_usernameLable attribute:NSLayoutAttributeLeft multiplier:1.0 constant: 0];
    //设置上边距
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_passwordLable attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_line1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.5 * DJMargin];
    
    leftConstraint.active = YES;
    topConstraint.active = YES;
    
    _passwordLable.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置passwordtext的constrain
-(void)setUppasswordTextContrain{
    //设置左边距
    NSLayoutConstraint *leftConstrain = [NSLayoutConstraint constraintWithItem:_passwordText attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_passwordLable attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.5 * DJMargin];
    
    //设置右边距
    //    NSLayoutConstraint *RightConstrain = [NSLayoutConstraint constraintWithItem:_usernameText attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant: -2 * DJMargin];
    //设置宽度
    NSLayoutConstraint *widthConstrain = [NSLayoutConstraint constraintWithItem:_passwordText attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant: self.frame.size.width - 4.5 * DJMargin - _usernameLable.frame.size.width];
    
    //设置上边界
    NSLayoutConstraint *topContrain = [NSLayoutConstraint constraintWithItem:_passwordText attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_passwordLable attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    //设置下边界
    NSLayoutConstraint *bottomContrain = [NSLayoutConstraint constraintWithItem:_passwordText attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:_passwordLable attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    
    leftConstrain.active = YES;
    //    RightConstrain.active = YES;
    widthConstrain.active = YES;
    topContrain.active = YES;
    bottomContrain.active = YES;
    
    _passwordText.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置登录按钮的constraint
-(void)setUpLoginConstraint{
    CGFloat LoginW = self.frame.size.width / 3.0 ;
    CGFloat loginH = LoginW / 4.0;
    //login居中
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_Login attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
    //login顶部
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_Login attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_line2 attribute:NSLayoutAttributeBottom multiplier:1.0f constant:2 * DJMargin];
    
    //login高度
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_Login attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:0 constant:loginH];
    
    //login宽度
    NSLayoutConstraint *widchConstraint = [NSLayoutConstraint constraintWithItem:_Login attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:0 constant:LoginW];
    
    //iOS 6.0或者7.0调用addConstraints
    //[self.view addConstraints:@[leftConstraint, rightConstraint, topConstraint, heightConstraint]];
    
    //iOS 8.0以后设置active属性值
    centerConstraint.active = YES;
    topConstraint.active = YES;
    heightConstraint.active = YES;
    widchConstraint.active = YES;
    
    _Login.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma mark 设置忘记密码按钮的constraint
-(void)setUpforgetPWConstraint{
    CGFloat forgetPWW = self.frame.size.width / 6.0 ;
    CGFloat forgetPWH = forgetPWW / 4.0;
    //_forgetPW居中
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_forgetPW attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
    //_forgetPW顶部
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_forgetPW attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_Login attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.5 * DJMargin];
    
    //_forgetPW高度
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_forgetPW attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:0 constant:forgetPWH];
    
    //_forgetPW宽度
    NSLayoutConstraint *widchConstraint = [NSLayoutConstraint constraintWithItem:_forgetPW attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:0 constant:forgetPWW];

    centerConstraint.active = YES;
    topConstraint.active = YES;
    heightConstraint.active = YES;
    widchConstraint.active = YES;
    
    _forgetPW.translatesAutoresizingMaskIntoConstraints = NO;

}

#pragma mark -------------按钮调用方法----------------
#pragma mark 登录按钮
-(void)loginClick{
//    NSLog(@"%s",__func__);
    if ([self.delegate respondsToSelector:@selector(DJLoginvIewDidClickLoginButton:AndPassWordText:)]) {
        [self.delegate DJLoginvIewDidClickLoginButton:_Login AndPassWordText:_passwordText];
    }
}

#pragma mark 忘记密码按钮
-(void)forgetClick{
    
//    NSLog(@"%s",__func__);
    if ([self.delegate respondsToSelector:@selector(DJLoginvIewDidClickForgetClick:)]) {
        [self.delegate DJLoginvIewDidClickForgetClick:_forgetPW];
    }
}

#pragma mark ------------监听输入框状态-------------
-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    if ([self.delegate respondsToSelector:@selector(DJLoginViewUsernametextDidEndEditing:)]) {
        [self.delegate DJLoginViewUsernametextDidEndEditing:textField];
    }
    
}

@end
