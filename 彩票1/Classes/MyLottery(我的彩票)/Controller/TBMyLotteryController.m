//
//  TBMyLotteryController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "UIImage+TBOriginImage.h"
#import "TBMyLotteryController.h"

@interface TBMyLotteryController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation TBMyLotteryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIImage *streImag= [self.loginBtn.currentImage stretchableImageWithLeftCapWidth:<#(NSInteger)#> topCapHeight:<#(NSInteger)#>
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:self.loginBtn.currentBackgroundImage] forState:UIControlStateNormal] ;
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:[self.loginBtn backgroundImageForState:UIControlStateHighlighted] ] forState:UIControlStateHighlighted] ;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
