////
////  UIView转场动画
////  TransitionAnimation
////
////  Created by Kenshin Cui on 14-3-12.
////  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
////
//
//#import "KCMainViewController.h"
//#define IMAGE_COUNT 5
//
//@interface KCMainViewController (){
//    UIImageView *_imageView;
//    int _currentIndex;
//}
//
//@end
//
//@implementation KCMainViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    //定义图片控件
//    _imageView=[[UIImageView alloc]init];
//    _imageView.frame=[UIScreen mainScreen].applicationFrame;
//    _imageView.contentMode=UIViewContentModeScaleAspectFit;
//    _imageView.image=[UIImage imageNamed:@"0.jpg"];//默认图片
//    [self.view addSubview:_imageView];
//    //添加手势
//    UISwipeGestureRecognizer *leftSwipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipe:)];
//    leftSwipeGesture.direction=UISwipeGestureRecognizerDirectionLeft;
//    [self.view addGestureRecognizer:leftSwipeGesture];
//    
//    UISwipeGestureRecognizer *rightSwipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightSwipe:)];
//    rightSwipeGesture.direction=UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:rightSwipeGesture];
//}
//
//#pragma mark 向左滑动浏览下一张图片
//-(void)leftSwipe:(UISwipeGestureRecognizer *)gesture{
//    [self transitionAnimation:YES];
//}
//
//#pragma mark 向右滑动浏览上一张图片
//-(void)rightSwipe:(UISwipeGestureRecognizer *)gesture{
//    [self transitionAnimation:NO];
//}
//
//
//#pragma mark 转场动画
//-(void)transitionAnimation:(BOOL)isNext{
//    UIViewAnimationOptions option;
//    if (isNext) {
//        option=UIViewAnimationOptionCurveLinear|UIViewAnimationOptionTransitionFlipFromRight;
//    }else{
//        option=UIViewAnimationOptionCurveLinear|UIViewAnimationOptionTransitionFlipFromLeft;
//    }
//    
//    [UIView transitionWithView:_imageView duration:1.0 options:option animations:^{
//        _imageView.image=[self getImage:isNext];
//    } completion:nil];
//}
//
//#pragma mark 取得当前图片
//-(UIImage *)getImage:(BOOL)isNext{
//    if (isNext) {
//        _currentIndex=(_currentIndex+1)%IMAGE_COUNT;
//    }else{
//        _currentIndex=(_currentIndex-1+IMAGE_COUNT)%IMAGE_COUNT;
//    }
//    NSString *imageName=[NSString stringWithFormat:@"%i.jpg",_currentIndex];
//    return [UIImage imageNamed:imageName];
//}
//@end
