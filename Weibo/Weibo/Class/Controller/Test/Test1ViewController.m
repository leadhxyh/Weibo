//
//  Test1ViewController.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "Test1ViewController.h"
#import "Test2ViewController.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    Test2ViewController *test2 = [[Test2ViewController alloc] init];
    [self.navigationController pushViewController:test2 animated:YES];
}

@end
