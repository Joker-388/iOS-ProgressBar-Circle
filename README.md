# iOS-ProgressBar-Circle
一个用于iOS的圆形进度条，带有文字显示进度。可以定义文字大小颜色，圆形进度条宽度颜色。

使用方法：
1.代码：

    JKRCircleProgressView *cpv = [[JKRCircleProgressView alloc] initWithFrame:CGRectMake(20, 330, 200, 200)];
    cpv.backgroundColor = [UIColor whiteColor];
    cpv.font = [UIFont systemFontOfSize:30];
    cpv.textColor = [UIColor greenColor];
    cpv.circleColor = [UIColor redColor];
    cpv.circleWidth = 5;
    [self.view addSubview:cpv];
    _codeCircleProgress = cpv;
    _codeCircleProgress.progress = sender.value; //设置进度

2.xib:
设置xib中view的class为JKRCircleProgressView即可
托线获得控件

    @property (weak, nonatomic) IBOutlet JKRCircleProgressView *circleProgress;
    self.circleProgress.font = [UIFont systemFontOfSize:30];
    self.circleProgress.textColor = [UIColor redColor];
    self.circleProgress.circleColor = [UIColor greenColor];
    self.circleProgress.circleWidth = 5;
    _circleProgress.progress = sender.value; //设置进度


