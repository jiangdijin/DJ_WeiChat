//
//  DJLoginView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginView.h"





@interface DJLoginView ()
{
    UIImageView *_Icon;//头像
    UILabel *_usernameLable;//用户名
    UITextField *_usernameText;//用户名输入框
    UILabel *_passwordLable;//密码
    UITextField *_passwordText;//密码输入框
    UIButton *_Login;//登录按钮
    UIButton *_forgetPW;//忘记密码按钮
    UIView *_line1;//分割线1
    UIView *_line2;//分割线2
    UIView *_line3;//分割线3
    UIView *_line4;//分割线4
    UIButton *_showPW;//是否显示密码
    UILabel *_OtherLogin;//其他方式登录
    UIButton *_WeiChatLogin;//微信登录
    UIButton *_QQLogin;//QQ登录
    UIButton *_weiboLogin;//微博登录

}

/*
 *初始化子控制器
 */
- (void)setUpChildView;

@end

@implementation DJLoginView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self setImage:[UIImage imageNamed:@"LoginbackgroundImage"]];
        
        //毛玻璃效果
        if (IS_IOS7_LAGACY) {
#warning 未测试......................
            //IOS7及之前的方法
            UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:self.frame];
            toolBar.barStyle = UIBarStyleBlack;
            [self addSubview:toolBar];
        }else{
            //IOS8之后出现的方法
            UIBlurEffect *Effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
            UIVisualEffectView *EffectView = [[UIVisualEffectView alloc]initWithEffect:Effect];
            EffectView.frame = self.frame;
            [self addSubview:EffectView];
        }

        
        [self setUpChildView];
    }
    return self;
}

-(void)layoutSubviews{

}

#pragma mark 添加子控制器
-(void)setUpChildView{
    //头像
    _Icon = [[UIImageView alloc]init];
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
    
    //分割线3
    _line3 = [[UIView alloc]init];
    [self addSubview:_line3];
    
    //分割线4
    _line4 = [[UIView alloc]init];
    [self addSubview:_line4];
    
    //是否显示密码
    _showPW = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_showPW];
    
    //其他方式登录
    _OtherLogin = [[UILabel alloc]init];
    [self addSubview:_OtherLogin];
    
    //微信登录
    _WeiChatLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_WeiChatLogin];
    
    //QQ登录
    _QQLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_QQLogin];
    
    //微博登录
    _weiboLogin= [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_weiboLogin];
    
}

@end
