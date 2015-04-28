////
////  动画组
////  Animation
////
////  Created by Kenshin Cui on 14-3-22.
////  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
////
//
//#import "KCMainViewController.h"
//
//@interface KCMainViewController (){
//    CALayer *_layer;
//}
//
//@end
//
//@implementation KCMainViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    //设置背景(注意这个图片其实在根图层)
//    UIImage *backgroundImage=[UIImage imageNamed:@"background.jpg"];
//    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
//    
//    //自定义一个图层
//    _layer=[[CALayer alloc]init];
//    _layer.bounds=CGRectMake(0, 0, 10, 20);
//    _layer.position=CGPointMake(50, 150);
//    _layer.contents=(id)[UIImage imageNamed:@"petal.png"].CGImage;
//    [self.view.layer addSublayer:_layer];
//    
//    //创建动画
//    [self groupAnimation];
//}
//
//#pragma mark 基础旋转动画
//-(CABasicAnimation *)rotationAnimation{
//
//    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
//
//    CGFloat toValue=M_PI_2*3;
//    basicAnimation.toValue=[NSNumber numberWithFloat:M_PI_2*3];
//
////    basicAnimation.duration=6.0;
//    basicAnimation.autoreverses=true;
//    basicAnimation.repeatCount=HUGE_VALF;
//    basicAnimation.removedOnCompletion=NO;
//    
//    [basicAnimation setValue:[NSNumber numberWithFloat:toValue] forKey:@"KCBasicAnimationProperty_ToValue"];
//    
//    return basicAnimation;
//}
//
//#pragma mark 关键帧移动动画
//-(CAKeyframeAnimation *)translationAnimation{
//    CAKeyframeAnimation *keyframeAnimation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
//    
//    CGPoint endPoint= CGPointMake(55, 400);
//    CGPathRef path=CGPathCreateMutable();
//    CGPathMoveToPoint(path, NULL, _layer.position.x, _layer.position.y);
//    CGPathAddCurveToPoint(path, NULL, 160, 280, -30, 300, endPoint.x, endPoint.y);
//    
//    keyframeAnimation.path=path;
//    CGPathRelease(path);
//
//    [keyframeAnimation setValue:[NSValue valueWithCGPoint:endPoint] forKey:@"KCKeyframeAnimationProperty_EndPosition"];
//    
//    return keyframeAnimation;
//}
//
//#pragma mark 创建动画组
//-(void)groupAnimation{
//    //1.创建动画组
//    CAAnimationGroup *animationGroup=[CAAnimationGroup animation];
//    
//    //2.设置组中的动画和其他属性
//    CABasicAnimation *basicAnimation=[self rotationAnimation];
//    CAKeyframeAnimation *keyframeAnimation=[self translationAnimation];
//    animationGroup.animations=@[basicAnimation,keyframeAnimation];
//    
//    animationGroup.delegate=self;
//    animationGroup.duration=10.0;//设置动画时间，如果动画组中动画已经设置过动画属性则不再生效
//    animationGroup.beginTime=CACurrentMediaTime()+5;//延迟五秒执行
//    
//    //3.给图层添加动画
//    [_layer addAnimation:animationGroup forKey:nil];
//}
//
//#pragma mark - 代理方法
//#pragma mark 动画完成
//-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
//    CAAnimationGroup *animationGroup=(CAAnimationGroup *)anim;
//    CABasicAnimation *basicAnimation=animationGroup.animations[0];
//    CAKeyframeAnimation *keyframeAnimation=animationGroup.animations[1];
//    CGFloat toValue=[[basicAnimation valueForKey:@"KCBasicAnimationProperty_ToValue"] floatValue];
//    CGPoint endPoint=[[keyframeAnimation valueForKey:@"KCKeyframeAnimationProperty_EndPosition"] CGPointValue];
//    
//    [CATransaction begin];
//    [CATransaction setDisableActions:YES];
//    
//    //设置动画最终状态
//    _layer.position=endPoint;
//    _layer.transform=CATransform3DMakeRotation(toValue, 0, 0, 1);
//    
//    [CATransaction commit];
//}
//
//@end
