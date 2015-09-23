//
//  TBXiaoPingGuo.h
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TBXiaoPingGuoDelegate <NSObject>

@optional
- (void)xiaoPingGuoDidClickClose;

@end

@interface TBXiaoPingGuo : UIView

@property (nonatomic,weak) id  delegate;
- (void)showInPont:(CGPoint)point;
- (void)hideInPont:(CGPoint)point Completion:(void (^ )())completion;
@end
