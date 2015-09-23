
//
//  TBCollectionViewController.m
//  彩票1
//
//  Created by MAC BOOK on 15/9/22.
//  Copyright © 2015年 XMG. All rights reserved.
//
#import "TBCollectionViewCell.h"
#import "TBCollectionViewController.h"

@implementation TBCollectionViewController

- (void)viewDidLoad{
    
    [self.collectionView registerClass:[TBCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
}

- (instancetype)init{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumInteritemSpacing =0;
    flowLayout.itemSize = [UIScreen mainScreen].bounds.size;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return   [self initWithCollectionViewLayout:flowLayout ];
}



- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 4;
}

- (UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    TBCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    NSString *imageName = [NSString stringWithFormat:@"guide%dBackground568h",indexPath.row + 1];
    cell.image = [UIImage imageNamed:imageName];
    return cell ;
    
    
}

@end
