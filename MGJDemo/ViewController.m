//
//  ViewController.m
//  MGJDemo
//
//  Created by 夜月韩 on 2019/1/16.
//  Copyright © 2019 夜月韩. All rights reserved.
//

#import "ViewController.h"
#import "ModuleManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(220, 160, 100, 50)];
    [btn setTitle:@"进入详情" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(toB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)toB
{
    Class class = [ModuleManager classForProtocol:NSProtocolFromString(@"JumpToBProtocol")];
    NSObject *tt = [class new];
    [tt performSelector:NSSelectorFromString(@"jumpToBwithNavigationCon:") withObject:self.navigationController];
}

@end
