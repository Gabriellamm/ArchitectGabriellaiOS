//
//  Manage_RootWindow.m
//  Architect_Gabriella_iOS
//
//  Created by Gabriella on 2017/5/27.
//  Copyright © 2017年 Gabriella. All rights reserved.
//

#define CurrentLoginStatuc @"currentLoginStatuc"
#import "Manage_RootWindow.h"

@interface Manage_RootWindow ()
@property (nonatomic,copy)NSString *currentLoginStatuc;
@end

@implementation Manage_RootWindow

//单例模式
static Manage_RootWindow* Instance = nil;

+(instancetype)sharedInstance{
    if(Instance == nil){
        static dispatch_once_t once;
        dispatch_once(&once, ^{
            Instance = [[super alloc]init];
        });
    }
    return Instance;
}

//当我们调用alloc时候回调改方法(保证唯一性)
+(id)allocWithZone:(struct _NSZone *)zone{
    if(Instance == nil){
        static dispatch_once_t once;
        dispatch_once(&once, ^{
        Instance = [super allocWithZone:zone];
            });
    }
    return Instance;
}


-(UIViewController *)getRootVC{
    //第一次运行软件
    // 没有登陆
    // 已经登陆
NSDictionary *loginStatus =@{@"Login":@"MainViewController",};

//1、进行判断 并且保存
  _currentLoginStatuc = [[NSUserDefaults standardUserDefaults] objectForKey:CurrentLoginStatuc];

    if (_currentLoginStatuc==nil) {
        [[NSUserDefaults standardUserDefaults] setObject:@"Login" forKey:CurrentLoginStatuc];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }

  _currentLoginStatuc = [[NSUserDefaults standardUserDefaults] objectForKey:CurrentLoginStatuc];
    _currentLoginStatuc=[loginStatus objectForKey:_currentLoginStatuc];


  id objct            = [[NSClassFromString(@"MainViewController") alloc]init];

    return objct;


}
@end
