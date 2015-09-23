//
//  UIView+TBFrame.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/23.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "UIView+TBFrame.h"

@implementation UIView (TBFrame)

- (CGFloat)x{
    
    return self.frame.origin.x;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (CGFloat)width{
    
    return self.frame.size.width;
}

- (CGFloat)height{
    
    return self.frame.size.height;
}

- (void)setX:(CGFloat)x{
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame =frame;
    
}

- (void)setY:(CGFloat)y{
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame =frame;

}

- (void)setWidth:(CGFloat)width{
    
    CGRect frame = self.frame;
    frame.size.width = frame.size.width;
    self.frame =frame;

}

- (void)setHeight:(CGFloat)height{
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame =frame;

}

@end
