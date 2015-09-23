//
//  TBTabBar.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "TBButton.h"
#import "TBTabBar.h"

@interface TBTabBar ()
@property (nonatomic,weak) TBButton  *selBtn;
@end


@implementation TBTabBar

- (void)setTabBarItems:(NSArray *)tabBarItems{
    _tabBarItems = tabBarItems;
    int i = 0;
    for (UITabBarItem *item in tabBarItems) {
        TBButton *btn = [TBButton buttonWithType:UIButtonTypeCustom];
        btn.tag = i;
        if (i==0) {
            btn.selected = YES;
            self.selBtn = btn;
        }
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:btn];
        i++;
    }

}

- (void)btnClick:(TBButton *)btn{
    self.selBtn.selected = NO;
    btn.selected = YES;
    self.selBtn = btn;
    self.selectVC(self,btn.tag);
}

- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat width = self.bounds.size.width / self.tabBarItems.count;
    CGFloat height = self.bounds.size.height;
    for (int i = 0; i<self.tabBarItems.count; i++) {
        UIButton *btn = self.subviews[i];
        btn.frame = CGRectMake(i * width, 0, width, height);
    }
}

@end
