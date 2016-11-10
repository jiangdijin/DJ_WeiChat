//
//  DJLoginBackgrountView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/10.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginBackgrountView.h"

@interface DJLoginBackgrountView ()

/*
 *添加子控制器
 */
- (void)addChildView;


@end

@implementation DJLoginBackgrountView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
#warning 将毛玻璃效果封装成子类,调用方法后图片就变模糊
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
        
    }
    return self;
}
@end
