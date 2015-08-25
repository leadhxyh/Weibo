//
//  DiscoverViewController.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "DiscoverViewController.h"
#import "VocSearchBar.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    VocLog(@"DiscoverViewController->viewDidLoad");
    
    //此处加入系统自带搜索框，但效果不好（边框不明显）
//    UISearchBar *searchBar = [[UISearchBar alloc] init];
//    searchBar.height = 30;
//    self.navigationItem.titleView = searchBar;
    
    VocSearchBar *searchField = [[VocSearchBar alloc] init];
    searchField.width = [UIScreen mainScreen].bounds.size.width - 20;
    searchField.height = 30;
    
    self.navigationItem.titleView = searchField;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
