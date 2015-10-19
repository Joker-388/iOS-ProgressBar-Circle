//
//  JKRCircleProgressView.m
//  圆形进度条
//
//  Created by Lucky on 15/10/17.
//  Copyright © 2015年 Lucky. All rights reserved.
//

#import "JKRCircleProgressView.h"

@interface JKRCircleProgressView ()

@property (nonatomic, weak) UILabel *label;

@end

@implementation JKRCircleProgressView

#pragma mark - 代码加载
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initCircleProgressView];
    }
    return self;
}

#pragma mark - xib加载
- (void)awakeFromNib
{
    [self initCircleProgressView];
}

#pragma mark - 初始化进度条
- (void)initCircleProgressView
{
    UILabel *label = [[UILabel alloc] init];
    label.textAlignment = NSTextAlignmentCenter;
    [self addSubview:label];
    _label = label;
    
    self.progress = 0.00;
    self.font = [UIFont systemFontOfSize:18];
    self.textColor = [UIColor blackColor];
    self.circleColor = [UIColor blackColor];
    self.circleWidth = 2;
}

#pragma mark -设置进度条
- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    self.label.text = [NSString stringWithFormat:@"%.2f%%", progress * 100];
    [self setNeedsDisplay];
}

- (void)setFont:(UIFont *)font
{
    _font = font;
    self.label.font = font;
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor = textColor;
    self.label.textColor = textColor;
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
}

- (void)setCircleWidth:(CGFloat)circleWidth
{
    _circleWidth = circleWidth;
}

#pragma mark - 绘制进度条
- (void)drawRect:(CGRect)rect
{
    CGContextRef ctr = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    CGFloat radius = self.frame.size.width * 0.9 * 0.5;
    
    CGFloat startA = -M_PI_2;
    CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    
    CGContextSetLineWidth(ctr, self.circleWidth);
    [self.circleColor setStroke];
    
    CGContextAddPath(ctr, path.CGPath);
    
    CGContextStrokePath(ctr);
}

#pragma mark - 设置视图约束
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    [self addConstraint:leading];
    [self addConstraint:trailing];
    [self addConstraint:top];
    [self addConstraint:bottom];
}

@end
