//
//  VocNavigationController.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "VocNavigationController.h"

@interface VocNavigationController ()

@end

@implementation VocNavigationController

+ (void)initialize {
    //设置所有baritem的样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttr = [NSMutableDictionary dictionary];
    //设置字体颜色
    textAttr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    //设置字体大小
    textAttr[NSFontAttributeName] = [UIFont systemFontOfSize:13.0];
    [item setTitleTextAttributes:textAttr forState:UIControlStateNormal];
    
    NSMutableDictionary *disableTextAttr = [NSMutableDictionary dictionary];
    disableTextAttr[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.8];
    disableTextAttr[NSFontAttributeName] = [UIFont systemFontOfSize:13.0];
    [item setTitleTextAttributes:disableTextAttr forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        //返回按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back:) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted"];
        
        //更多按钮
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more:) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
    }
    
    [super pushViewController:viewController animated:YES];
}

- (void)back:(UIButton *) btn {
    [self popViewControllerAnimated:YES];
}

- (void)more:(UIButton *) btn {
    [self popToRootViewControllerAnimated:YES];
}

@end
