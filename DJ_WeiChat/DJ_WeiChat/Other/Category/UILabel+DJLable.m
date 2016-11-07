//
//  UILabel+DJLable.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "UILabel+DJLable.h"

@implementation UILabel (DJLable)

+ (UILabel *)setNavigationBarTitleLableWithText:(NSString *)text color:(UIColor *)color Font:(UIFont *)font{
    
    UILabel *title = [[UILabel alloc]init];
    
    title.text = text;
    
    [title setTextColor:color];
    
    title.font = font;
    
    [title sizeToFit];
    
    return title;
    
}

@end
