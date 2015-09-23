//
//  TBTabBarController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//

#import "TBTabBarController.h"
#import "TBNavigationController.h"
#import "TBArenaController.h"
#import "TBDiscoveryController.h"
#import "TBHallController.h"
#import "TBHistoryController.h"
#import "TBMyLotteryController.h"
#import "TBTabBar.h"
#import "TBArenaNavCon.h"
@interface TBTabBarController ()

@property (nonatomic,strong) NSMutableArray  *items;
@end

@implementation TBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpAllNavigationController];
    [self setUpTabBar];
   
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 移除系统UITabBar上自带的按钮
    for (UIView *childView in self.tabBar.subviews) {
        // 判断下是否是UITabButton
        if ([childView isKindOfClass:[TBTabBar class]] == NO) {
            
            [childView removeFromSuperview];
        }
    }
}

- (void)setUpTabBar{
    
    TBTabBar *tabBar1 = [[TBTabBar alloc]initWithFrame:self.tabBar.bounds];
    tabBar1.selectVC = ^(TBTabBar * t1, NSInteger n){
        self.selectedIndex =n;
    };
    tabBar1.tabBarItems = self.items;

    //[self.tabBar removeFromSuperview];
//    NSLog(@"%d",self.tabBar.subviews.count);
//    for (<#type *object#> in self.tabBar.subviews) {
//        <#statements#>
//    }
    [self.tabBar addSubview:tabBar1];

}

- (void)setUpAllNavigationController{
    //UIImage *image = [UIImage imageNamed:@"TabBar_Arena_new"];
    self.items = [NSMutableArray array];
    TBHallController *hallTVC = [[TBHallController alloc]init];
    [self addAControllerWithController:hallTVC WithImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"] WithSelImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] WithTitle:@"购彩大厅"];

    TBArenaController *arenaVc = [[TBArenaController alloc]init];
    arenaVc.view.backgroundColor = [UIColor yellowColor];
    [self addAControllerWithController:arenaVc WithImage:[UIImage imageNamed:@"TabBar_Arena_new"] WithSelImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] WithTitle:@"竞技场"];
    UIStoryboard *stroyBoard = [UIStoryboard storyboardWithName:@"TBDiscoveryController" bundle:[NSBundle mainBundle]];
    TBDiscoveryController *disTVC = [stroyBoard instantiateInitialViewController];
    [self addAControllerWithController:disTVC WithImage:[UIImage imageNamed:@"TabBar_Discovery_new"] WithSelImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] WithTitle:@"发现"];
    
    
    TBHistoryController *hisTVC = [[TBHistoryController alloc]init];
    [self addAControllerWithController:hisTVC WithImage:[UIImage imageNamed:@"TabBar_History_new"] WithSelImage:[UIImage imageNamed:@"TabBar_History_selected_new"] WithTitle:@"开奖信息"];
    
    TBMyLotteryController *myLotteryVC = [[TBMyLotteryController alloc]init];
    //myLotteryVC.view.backgroundColor = [UIColor redColor];
    [self addAControllerWithController:myLotteryVC WithImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] WithSelImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] WithTitle:@"我的彩票"];
    
}

- (void)addAControllerWithController:(UIViewController *)controller WithImage:(UIImage *)image WithSelImage:(UIImage *)selImage WithTitle:(NSString *)title {
    controller.navigationItem.title = title;
    UINavigationController *navigationController;
    if ([controller isKindOfClass:[TBArenaController class]]) {
     navigationController = [[TBArenaNavCon alloc]initWithRootViewController:controller];
    }else{
     navigationController = [[TBNavigationController alloc]initWithRootViewController:controller];
    }
    navigationController.tabBarItem.image = image;
    navigationController.tabBarItem.selectedImage = selImage;
    [self.items addObject:navigationController.tabBarItem];
    [self addChildViewController:navigationController];

}


@end
