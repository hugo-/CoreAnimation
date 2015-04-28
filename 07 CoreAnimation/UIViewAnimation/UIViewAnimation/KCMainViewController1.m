////
////  UIView实现基础动画
////  Animation
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
//#pragma mark 点击事件
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch=touches.anyObject;
//    CGPoint location= [touch locationInView:self.view];
//    //方法1：block方式
//    /*开始动画，UIView的动画方法执行完后动画会停留在重点位置，而不需要进行任何特殊处理
//     duration:执行时间
//     delay:延迟时间
//     options:动画设置，例如自动恢复、渐入渐出、匀速运动等
//     completion:动画完成回调方法
//     */
////    [UIView animateWithDuration:5.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
////        _imageView.center=location;
////    } completion:^(BOOL finished) {
////        NSLog(@"Animation end.");
////    }];
//    
//    //方法2：静态方法
//    //开始动画
//    [UIView beginAnimations:@"KCBasicAnimation" context:nil];
//    [UIView setAnimationDuration:5.0];
//    //[UIView setAnimationDelay:1.0];//设置延迟
//    //[UIView setAnimationRepeatAutoreverses:NO];//是否回复
//    //[UIView setAnimationRepeatCount:10];//重复次数
//    //[UIView setAnimationStartDate:(NSDate *)];//设置动画开始运行的时间
//    //[UIView setAnimationDelegate:self];//设置代理
//    //[UIView setAnimationWillStartSelector:(SEL)];//设置动画开始运动的执行方法
//    //[UIView setAnimationDidStopSelector:(SEL)];//设置动画运行结束后的执行方法
//    
//    _imageView.center=location;
//    
//    
//    //开始动画
//    [UIView commitAnimations];
//}
//@end
