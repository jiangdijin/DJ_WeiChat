//
//  DJOtherLoginView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/10.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJOtherLoginView.h"

#define DJMargin 35


@interface DJOtherLoginView ()
{
    UIView *_line1;//分割线1
    UIView *_line2;//分割线2
    UILabel *_OtherLogin;//其他方式登录
    UIButton *_WeiChatLogin;//微信登录
    UIButton *_QQLogin;//QQ登录
    UIButton *_weiboLogin;//微博登录
}

- (void)addChildView;//添加子控制器
- (void)setUpChildViewcontent;//设置子控制器的内容
- (void)setUpOtherLoginConstrain;//设置OtherLogin的Contrain;
- (void)setUpline1Constrain;//设置line1的Contrain;
- (void)setUpline2Constrain;//设置line2的Contrain;

@end

@implementation DJOtherLoginView


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        //添加子控制器
        [self addChildView];
        
        //设置子控制器的内容
        [self setUpChildViewcontent];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //其他方式登录lable
    [self setUpOtherLoginConstrain];
    
    //分割线1
    [self setUpline1Constrain];
    
    //分割线2
    [self setUpline2Constrain];
}

#pragma mark添加子控制器
-(void)addChildView{
    //分割线1
    _line1 = [[UIView alloc]init];
    [self addSubview:_line1];
    
    //分割线2
    _line2 = [[UIView alloc]init];
    [self addSubview:_line2];
    
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

#pragma mark 设置子控制器的内容
-(void)setUpChildViewcontent{
    //_OtherLogin
    _OtherLogin.text = @"其他方式登录";
    _OtherLogin.textColor = [UIColor whiteColor];
    _OtherLogin.font = DJTitleFont;
    [_OtherLogin sizeToFit];
    
    //line1
    _line1.backgroundColor = [UIColor whiteColor];
    
    //line2
    _line2.backgroundColor = [UIColor whiteColor];
}

#pragma mark 设置OtherLogin的Contrain
-(void)setUpOtherLoginConstrain{
    //居中
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_OtherLogin attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0];
    //顶部
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_OtherLogin attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0f constant:10];
    
    centerConstraint.active = YES;
    topConstraint.active = YES;
    
    _OtherLogin.translatesAutoresizingMaskIntoConstraints = NO;
    
}

#pragma mark 设置line1的Contrain
-(void)setUpline1Constrain{
    //右边
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_OtherLogin attribute:NSLayoutAttributeLeft multiplier:1.0f constant:-10];
    //Y向中心
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_OtherLogin attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0];
    //左边
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0f constant:DJMargin];
    
    //高度
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_line1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1.0f constant:1];
    
    rightConstraint.active = YES;
    centerConstraint.active = YES;
    leftConstraint.active = YES;
    heightConstraint.active = YES;
    
    _line1.translatesAutoresizingMaskIntoConstraints = NO;
    
}

#pragma mark 设置line2的Contrain
-(void)setUpline2Constrain{
    //左边
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_OtherLogin attribute:NSLayoutAttributeRight multiplier:1.0f constant:10];
    //Y向中心
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_OtherLogin attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0];
    //左边
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0f constant:- DJMargin];
    
    //高度
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_line2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1.0f constant:1];
    
    rightConstraint.active = YES;
    centerConstraint.active = YES;
    leftConstraint.active = YES;
    heightConstraint.active = YES;
    
    _line2.translatesAutoresizingMaskIntoConstraints = NO;
    
}


@end
