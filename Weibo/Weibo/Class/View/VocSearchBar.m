//
//  VocSearchBar.m
//  Weibo
//
//  Created by liaowei on 15/8/25.
//  Copyright (c) 2015年 liaowei. All rights reserved.
//

#import "VocSearchBar.h"

@implementation VocSearchBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont systemFontOfSize:15.0f];
        self.placeholder = @"请输入搜索的内容";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        
        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.contentMode = UIViewContentModeCenter;
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways; //此句必须加上
    }
    return self;
}

+ (instancetype)searchBar {
    return [[self alloc] init];
}

@end
