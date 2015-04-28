//
//  UIView实现基础动画--弹性动画
//  Animation
//
//  Created by Kenshin Cui on 14-3-22.
//  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
//

#import "KCMainViewController.h"

@interface KCMainViewController (){
    UIImageView *_imageView;
}

@end

@implementation KCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建图像显示控件
    _imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ball.png"]];
    _imageView.center=CGPointMake(160, 50);
    [self.view addSubview:_imageView];
    
}

#pragma mark 点击事件
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch=touches.anyObject;
    CGPoint location= [touch locationInView:self.view];
    /*创建弹性动画
     damping:阻尼，范围0-1，阻尼越接近于0，弹性效果越明显
     velocity:弹性复位的速度
    */
    [UIView animateWithDuration:5.0 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
        _imageView.center=location; //CGPointMake(160, 284);
    } completion:nil];
}
@end
