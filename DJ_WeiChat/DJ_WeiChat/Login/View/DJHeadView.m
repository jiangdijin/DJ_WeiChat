//
//  DJHeadView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/3.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJHeadView.h"

@interface DJHeadView (){
    //头部标题
    UILabel *_headTitle;
}


@end

@implementation DJHeadView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor blackColor];
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44);
    }
    return self;
}

-(void)layoutSubviews{
    
}

@end
