////
////  UIView关键帧动画
////  UIViewAnimation
////
////  Created by Kenshin Cui on 14-3-22.
////  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
////
//
//#import "KCMainViewController.h"
//
//@interface KCMainViewController (){
//    UIImageView *_imageView;
//}
//
//@end
//
//@implementation KCMainViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    //设置背景
//    UIImage *backgroundImage=[UIImage imageNamed:@"background.jpg"];
//    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
//
//    //创建图像显示控件
//    _imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"petal.png"]];
//    _imageView.center=CGPointMake(50, 150);
//    [self.view addSubview:_imageView];
//}
//
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    //UITouch *touch=touches.anyObject;
//    //CGPoint location= [touch locationInView:self.view];
//    
//    /*关键帧动画：属性值动画
//     options:
//     */
//    [UIView animateKeyframesWithDuration:5.0 delay:0 options: UIViewAnimationOptionCurveLinear| UIViewAnimationOptionCurveLinear animations:^{
//        //第二关键帧（准确的说第一个关键帧是开始位置）:从0秒开始持续50%的时间，也就是5.0*0.5=2.5秒
//        [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.5 animations:^{
//            _imageView.center=CGPointMake(80.0, 220.0);
//        }];
//        //第三个关键帧，从0.5*5.0秒开始，持续5.0*0.25=1.25秒
//        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.25 animations:^{
//            _imageView.center=CGPointMake(45.0, 300.0);
//        }];
//        //第四个关键帧：从0.75*5.0秒开始，持所需5.0*0.25=1.25秒
//        [UIView addKeyframeWithRelativeStartTime:0.75 relativeDuration:0.25 animations:^{
//            _imageView.center=CGPointMake(55.0, 400.0);
//        }];
//        
//    } completion:^(BOOL finished) {
//        NSLog(@"Animation end.");
//    }];
//
//@end
