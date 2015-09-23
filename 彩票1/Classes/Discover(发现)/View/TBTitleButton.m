//
//  TBTitleButton.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/23.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "UIView+TBFrame.h"
#import "TBTitleButton.h"

@implementation TBTitleButton

- (void)layoutSubviews{
    
    [super layoutSubviews];
    if ( self.titleLabel.x > self.imageView.x) {
        self.titleLabel.x =self.imageView.x;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
    }

    
}


- (void)setTitle:(nullable NSString *)title forState:(UIControlState)state{
    
    [super setTitle:title forState:state];
    [self sizeToFit];
}

- (void)setImage:(nullable UIImage *)image forState:(UIControlState)state{
    
    [super setImage:image forState:state];
    [self sizeToFit];
}
@end
