//
//  TBArenaController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "TBArenaController.h"

@interface TBArenaController ()

@end

@implementation TBArenaController

- (void)loadView{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"NLArenaBackground"];
    self.view = imageView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setUpNavBar];
}

- (void)setUpNavBar{
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:@[@"足球",@"篮球"]];
    segment.tintColor = [UIColor colorWithRed:3/255.0 green:111/255.0 blue:132/255.0 alpha:1];
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [segment setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:3/255.0 green:180/255.0 blue:132/255.0 alpha:1]} forState:UIControlStateNormal];
    [segment setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]} forState:UIControlStateSelected];
    
    self.navigationItem.titleView = segment;
}

@end
