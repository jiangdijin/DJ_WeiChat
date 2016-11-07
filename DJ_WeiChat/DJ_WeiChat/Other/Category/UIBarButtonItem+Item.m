//
//  UIBarButtonItem+Item.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)


+(UIBarButtonItem *)setButtonItemWithNormalImage:(UIImage *)NormalImage HighlightImage:(UIImage *)HighlightImage AndaddTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:NormalImage forState:UIControlStateNormal];
    if (HighlightImage) {
        [btn setImage:HighlightImage forState:UIControlStateHighlighted];
    }else{
        [btn setImage:NormalImage forState:UIControlStateHighlighted];
    }
    
     UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    
    [btn sizeToFit];
    
    [btn addTarget:target action:action forControlEvents:controlEvents];
    
    return item;
}

@end
