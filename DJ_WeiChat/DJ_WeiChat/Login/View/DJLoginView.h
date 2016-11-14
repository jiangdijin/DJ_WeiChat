//
//  DJLoginView.h
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//  登录界面

#import <UIKit/UIKit.h>

@protocol DJLoginViewDelegate <NSObject>
@optional
/*
 *用户名输入结束代理方法
 */
- (void)DJLoginViewUsernametextDidEndEditing:(UITextField *)textField;

/*
 *登录按钮代理方法
 */
- (void)DJLoginvIewDidClickLoginButton:(UIButton *)btn AndPassWordText:(UITextField *)textField;

/*
 *忘记密码代理方式
 */
- (void)DJLoginvIewDidClickForgetClick:(UIButton *)btn;

@end

@interface DJLoginView : UIView
/*
 *代理
 */
@property (nonatomic ,weak) id<DJLoginViewDelegate> delegate;


/*
 *头像
 */
@property (nonatomic ,strong)UIImageView *Icon;

@end
