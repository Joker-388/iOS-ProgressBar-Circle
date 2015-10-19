//
//  ViewController.m
//  圆形进度条
//
//  Created by Lucky on 15/10/17.
//  Copyright © 2015年 Lucky. All rights reserved.
//

#import "ViewController.h"
#import "JKRCircleProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet JKRCircleProgressView *circleProgress;

@property (nonatomic, weak) JKRCircleProgressView *codeCircleProgress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.circleProgress.font = [UIFont systemFontOfSize:30];
    self.circleProgress.textColor = [UIColor redColor];
    self.circleProgress.circleColor = [UIColor greenColor];
    self.circleProgress.circleWidth = 5;
    
    
    JKRCircleProgressView *cpv = [[JKRCircleProgressView alloc] initWithFrame:CGRectMake(20, 330, 200, 200)];
    cpv.backgroundColor = [UIColor whiteColor];
    
    cpv.font = [UIFont systemFontOfSize:30];
    cpv.textColor = [UIColor greenColor];
    cpv.circleColor = [UIColor redColor];
    cpv.circleWidth = 5;
    
    [self.view addSubview:cpv];
    _codeCircleProgress = cpv;
}

- (IBAction)changeProgress:(UISlider *)sender {
    _circleProgress.progress = sender.value;
    _codeCircleProgress.progress = sender.value;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
