//
//  ViewController.m
//  HKCircularProgressViewTest
//
//  Created by 杨启晖 on 15/2/27.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "HKCircularProgressView.h"

@interface ViewController ()
@property (nonatomic, strong)HKCircularProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.progressView = [[HKCircularProgressView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
    self.progressView.center = self.view.center;
    self.progressView.progressTintColor = [UIColor blackColor];
    self.progressView.max = 1.0f;
    self.progressView.fillRadiusPx = 10;
    self.progressView.step = 0.1f;
    self.progressView.startAngle = (M_PI * 3) * 0.5;
    self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
    self.progressView.outlineWidth = 1;
    self.progressView.outlineTintColor = [UIColor blackColor];
    self.progressView.endPoint = [[HKCircularProgressEndPointRound alloc] init];
    
    [[HKCircularProgressView appearance] setAnimationDuration:5];
    
    self.progressView.alwaysDrawOutline = YES;
    
    [self.view addSubview:self.progressView];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.progressView setCurrent:1.0 animated:YES];
}
@end
