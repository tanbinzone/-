//
//  TBArenaNavCon.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/23.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "TBArenaNavCon.h"

@implementation TBArenaNavCon

+ (void)load{
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[TBArenaNavCon class]]];
    [navBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
}

@end
