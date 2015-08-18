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
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [backBtn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        //添加图片
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back"] forState:UIControlStateNormal];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateSelected];
        //设置尺寸
        backBtn.size = backBtn.currentBackgroundImage.size;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
        
        //更多按钮
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [moreBtn addTarget:self action:@selector(more:) forControlEvents:UIControlEventTouchUpInside];
        //添加图片
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more"] forState:UIControlStateNormal];
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] forState:UIControlStateSelected];
        //设置尺寸
        moreBtn.size = moreBtn.currentBackgroundImage.size;
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moreBtn];
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
