//
//  DJOtherLoginView.h
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/10.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DJOtherLoginViewDelegate <NSObject>

@optional
//点击weichat按钮
- (void)DJOtherLoginViewDidClickWeiChat:(UIButton *)btn;
//点击QQ按钮
- (void)DJOtherLoginViewDidClickQQ:(UIButton *)btn;
//点击微博按钮
- (void)DJOtherLoginViewDidClickWeibo:(UIButton *)btn;

@end

@interface DJOtherLoginView : UIView

@property (nonatomic ,weak) id<DJOtherLoginViewDelegate> delegate;

@end
