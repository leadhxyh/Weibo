//
//  UIBarButtonItem+Extension.h
//  Weibo
//
//  Created by liaowei on 15/8/20.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end
