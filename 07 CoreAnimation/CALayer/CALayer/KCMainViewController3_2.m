////
////  图层内容设置
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
//    //设置内容(注意这里一定要转化为CGImage)
//    UIImage *image=[UIImage imageNamed:@"photo.jpg"];
////    layer.contents=(id)image.CGImage;
//    [layer setContents:(id)image.CGImage];
//
//    //添加图层到根图层
//    [self.view.layer addSublayer:layer];
//}
//
//@end
