//
//  TBCoverView.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "TBCoverView.h"



@implementation TBCoverView



+ (void)show{
    TBCoverView *cover = [[TBCoverView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.5;
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
       
}

+ (void)hide{
    for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([view isKindOfClass:[TBCoverView class]]) {
            [view removeFromSuperview];
        }
    }
    
}

@end
