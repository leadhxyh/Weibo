//
//  ProfileViewController.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "ProfileViewController.h"
#import "Test1ViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    Test1ViewController *test1 = [[Test1ViewController alloc] init];
    [self.navigationController pushViewController:test1 animated:YES];
}

@end
