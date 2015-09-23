//
//  TBXiaoPingGuo.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "TBCoverView.h"
#import "TBXiaoPingGuo.h"

@interface TBXiaoPingGuo ()
@property (nonatomic,weak) UIImageView  *appleImageView;
@property (nonatomic,weak) UIButton  *btn;
@end

@implementation TBXiaoPingGuo

- (nonnull instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView *appleImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"xiaopingguo"]];
        self.appleImageView = appleImageView;
        [self addSubview:appleImageView];
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"alphaClose" ] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
        self.btn = btn;
        [self addSubview:btn];
    }
    return self;
}

- (void)showInPont:(CGPoint)point{
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    self.center = point;
    
}


- (void)hideInPont:(CGPoint)point Completion:(void (^ )())completion{
    
    [UIView animateWithDuration:2 animations:^{
        self.center = point;
        self.transform = CGAffineTransformMakeScale(0.1, 0.1);
        
    } completion:^(BOOL finished) {
        
        if (completion) {
            completion();
        }
        
    }];
}

- (void)closeView{
    
    if ([self.delegate respondsToSelector:@selector(xiaoPingGuoDidClickClose)]) {
        [self.delegate xiaoPingGuoDidClickClose];
    }
     
   }

- (void)layoutSubviews{
    self.appleImageView.frame = self.bounds;
    CGFloat btnWH = 20;
    self.btn.frame = CGRectMake(self.bounds.size.width - btnWH, 0, btnWH, btnWH);
    
}
@end
