//
//  MessageViewController.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *writeMsgItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(writeMsg)];
    self.navigationItem.rightBarButtonItem = writeMsgItem;
    
    //设置baritem不可使用状态，必须要在未加载调用，放在viewDidLoad中不可以。
    self.navigationItem.rightBarButtonItem.enabled = NO;
    
    VocLog(@"MessageViewController->viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)writeMsg {
    
}

@end
