//
//  JKRCircleProgressView.h
//  圆形进度条
//
//  Created by Lucky on 15/10/17.
//  Copyright © 2015年 Lucky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKRCircleProgressView : UIView

/** 设置进度 0-－1*/
@property (nonatomic, assign) CGFloat progress;

/** 设置进度字体大小*/
@property (nonatomic, strong) UIFont *font;

/** 设置进度字体颜色*/
@property (nonatomic, strong) UIColor *textColor;

/** 设置进度条颜色*/
@property (nonatomic, strong) UIColor *circleColor;

/** 设置进度条宽度*/
@property (nonatomic, assign) CGFloat circleWidth;

@end
