////
////  KCMainViewController.m
////  CALayer
////
////  Created by Kenshin Cui on 14-3-22.
////  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
////
//
//#import "KCMainViewController.h"
//#define PHOTO_HEIGHT 150
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
//    CGPoint position= CGPointMake(160, 200);
//    CGRect bounds=CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT);
//    CGFloat cornerRadius=PHOTO_HEIGHT/2;
//    CGFloat borderWidth=2;
//    
//    //阴影图层
//    CALayer *layerShadow=[[CALayer alloc]init];
//    layerShadow.bounds=bounds;
//    layerShadow.position=position;
//    layerShadow.cornerRadius=cornerRadius;
//    layerShadow.shadowColor=[UIColor grayColor].CGColor;
//    layerShadow.shadowOffset=CGSizeMake(2, 1);
//    layerShadow.shadowOpacity=1;
//    layerShadow.borderColor=[UIColor whiteColor].CGColor;
//    layerShadow.borderWidth=borderWidth;
//    [self.view.layer addSublayer:layerShadow];
//    
//    //容器图层
//    CALayer *layer=[[CALayer alloc]init];
//    layer.bounds=bounds;
//    layer.position=position;
//    layer.backgroundColor=[UIColor redColor].CGColor;
//    layer.cornerRadius=cornerRadius;
//    layer.masksToBounds=YES;
//    layer.borderColor=[UIColor whiteColor].CGColor;
//    layer.borderWidth=borderWidth;
//    
//    //设置图层代理
//    layer.delegate=self;
//    
//    //添加图层到根图层
//    [self.view.layer addSublayer:layer];
//    
//    //调用图层setNeedDisplay,否则代理方法不会被调用
//    [layer setNeedsDisplay];
//}
//
//#pragma mark 绘制图形、图像到图层，注意参数中的ctx时图层的图形上下文，其中绘图位置也是相对图层而言的
//-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
//    //    NSLog(@"%@",layer);//这个图层正是上面定义的图层
//    CGContextSaveGState(ctx);
//    
//    //图形上下文形变，解决图片倒立的问题
//    CGContextScaleCTM(ctx, 1, -1);
//    CGContextTranslateCTM(ctx, 0, -PHOTO_HEIGHT);
//    
//    UIImage *image=[UIImage imageNamed:@"photo.jpg"];
//    //注意这个位置是相对于图层而言的不是屏幕
//    CGContextDrawImage(ctx, CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT), image.CGImage);
//    
//    //    CGContextFillRect(ctx, CGRectMake(0, 0, 100, 100));
//    //    CGContextDrawPath(ctx, kCGPathFillStroke);
//    
//    CGContextRestoreGState(ctx);
//}
//@end
