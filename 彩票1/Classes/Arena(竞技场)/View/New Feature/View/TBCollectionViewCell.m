//
//  TBCollectionViewCell.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/23.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "TBCollectionViewCell.h"

@interface TBCollectionViewCell ()
@property (nonatomic,weak) UIImageView  *imagView;
@end

@implementation TBCollectionViewCell

- (UIImageView *)imagView{
    if (!_imagView) {
        UIImageView *view = [[UIImageView alloc]initWithFrame:self.bounds];
        _imagView = view;
        
        [self.contentView addSubview:view];
    }
    
    return _imagView;
}

- (void)setImage:(UIImage *)image{
    
    _image = image;
    self.imagView.image = image;
    
}
@end
