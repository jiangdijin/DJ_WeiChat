//
//  UIBarButtonItem+Item.h
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

/*
 *设置导航条item图片
 */
+(UIBarButtonItem *)setButtonItemWithNormalImage:(UIImage *)NormalImage HighlightImage:(UIImage *)HighlightImage AndaddTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

@end
