//
//  UIImage+TBOriginImage.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "UIImage+TBOriginImage.h"

@implementation UIImage (TBOriginImage)

+ (instancetype)imageWithOriginImage:(UIImage *)image{
    
  return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (UIImage *)resizableImage:(UIImage *)normal
{
    //UIImage *normal = [UIImage imageNamed:name];
    CGFloat w = normal.size.width * 0.5;
    CGFloat h = normal.size.height * 0.5;
    return [normal resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
}
@end
