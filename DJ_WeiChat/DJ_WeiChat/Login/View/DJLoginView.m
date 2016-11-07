//
//  DJLoginView.m
//  DJ_WeiChat
//
//  Created by xuyifei on 16/11/7.
//  Copyright © 2016年 xuyifei. All rights reserved.
//

#import "DJLoginView.h"

@implementation DJLoginView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.frame = CGRectMake(0, 0, DJScreenW, DJScreenBounds.size.height);
        
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
