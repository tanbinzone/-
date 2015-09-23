//
//  TBHallController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/21.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "TBXiaoPingGuo.h"
#import "TBCoverView.h"
#import "TBHallController.h"
#import "UIImage+TBOriginImage.h"

@interface TBHallController ()<TBXiaoPingGuoDelegate>
@property (nonatomic,weak) TBXiaoPingGuo  *xiaoPingGuo;
@end



@implementation TBHallController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriginImage: [UIImage imageNamed:@"CS50_activity_image"]] style:UIBarButtonItemStyleDone target:self action:@selector(showXiaoPingGuo)];
}

- (void)showXiaoPingGuo{
    [TBCoverView show];
    TBXiaoPingGuo *apple = [[TBXiaoPingGuo alloc]init];
    apple.bounds = CGRectMake(0, 0, 200, 200);
    apple.delegate = self;
    self.xiaoPingGuo = apple;
    [apple showInPont:self.view.center];
    
}

- (void)xiaoPingGuoDidClickClose{
    [self.xiaoPingGuo hideInPont:CGPointZero Completion:^{
        [TBCoverView hide];
        [self.xiaoPingGuo removeFromSuperview];
    }];
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
