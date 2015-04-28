////
////  使用UIView封装的方法进行动画控制
////  Animation
////
////  Created by Kenshin Cui on 14-3-22.
////  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
////
//
//#import "KCMainViewController.h"
//
//@interface KCMainViewController ()
//
//@end
//
//@implementation KCMainViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    UIImage *image=[UIImage imageNamed:@"open2.png"];
//    UIImageView *imageView=[[UIImageView alloc]init];
//    imageView.image=image;
//    imageView.frame=CGRectMake(120, 140, 80, 80);
//    [self.view addSubview:imageView];
//    
//    //两秒后开始一个持续一分钟的动画
//    [UIView animateWithDuration:1 delay:5 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
//        imageView.frame=CGRectMake(80, 100, 160, 160);
//    } completion:nil];
//    
//    
//    
//}
//
//
//@end
