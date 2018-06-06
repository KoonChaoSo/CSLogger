//
//  ViewController.m
//  CSLog
//
//  Created by ChaoSo on 2018/5/31.
//  Copyright © 2018年 ChaoSo. All rights reserved.
//

#import "ViewController.h"
#import "CSLogMacro.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //测试输出A
    CSLOG_TEST_DDLOG(@"TEST ONE IS AAAAAAAA");
    //测试输出B
    CSLOG_TEST_DDLOG2(@"TEST two IS bbbbbbbb");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
