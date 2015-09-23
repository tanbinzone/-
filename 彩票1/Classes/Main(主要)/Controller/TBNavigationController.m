//
//  TBNavigationController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "UIImage+TBOriginImage.h"
#import "TBNavigationController.h"

@interface TBNavigationController ()<UINavigationControllerDelegate>
@property (nonatomic,strong) id recoderDelegate;
@end

@implementation TBNavigationController


+ (void)load{
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[TBNavigationController class]]];
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
}

- (void)viewDidLoad{
    [super viewDidLoad];
    self.recoderDelegate = self.interactivePopGestureRecognizer.delegate;
    self.delegate = self;
}

- (void)navigationController:(nonnull UINavigationController *)navigationController didShowViewController:(nonnull UIViewController *)viewController animated:(BOOL)animated{
    if (viewController == self.childViewControllers[0]) {
        self.interactivePopGestureRecognizer.delegate = self.recoderDelegate;
    }else{
        self.interactivePopGestureRecognizer.delegate = nil;
    }
    
}

- (void)pushViewController:(nonnull UIViewController *)viewController animated:(BOOL)animated{

    [super pushViewController:viewController animated:YES];
    if (self.childViewControllers.count > 1) {
         viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriginImage: [UIImage imageNamed:@"NavBack"] ]style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    }
   
  
}

- (void)back{
    
    
    [self popViewControllerAnimated:YES];
}

@end
