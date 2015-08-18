//
//  AppDelegate.m
//  Weibo
//
//  Created by liaowei on 15/8/18.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "AppDelegate.h"
#import "VocTabbarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建UIWindow并设置尺寸和背景颜色
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
    
    //创建tabbarcontroller，并设置为根控制器
    VocTabbarController *tabbar = [[VocTabbarController alloc] init];
    self.window.rootViewController = tabbar;
    
    //显示UIWindow
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
