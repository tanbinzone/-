//
//  TBDiscoveryController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "UIImage+TBOriginImage.h"
#import "TBDiscoveryController.h"
#import "TBTitleButton.h"
@interface TBDiscoveryController ()

@end

@implementation TBDiscoveryController

- (void)viewDidLoad {
    [super viewDidLoad];
    TBTitleButton *titleBtn = [TBTitleButton buttonWithType:UIButtonTypeCustom];
    [titleBtn setTitle:@"发现" forState:UIControlStateNormal];
    [titleBtn setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    self.navigationItem.titleView = titleBtn;
 
    
}

- (void)back{
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
