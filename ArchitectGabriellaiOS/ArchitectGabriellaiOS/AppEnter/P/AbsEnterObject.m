//
//  AbsEnterObject.m
//  ArchitectGabriellaiOS
//
//  Created by Gabriella on 2017/6/1.
//  Copyright © 2017年 Gabriella. All rights reserved.
//

#define CurrentLoginStatuc @"currentLoginStatuc"
#import "AbsEnterObject.h"

@interface AbsEnterObject ()
@property (nonatomic,copy)NSString *currentLoginStatuc;
@property (nonatomic,copy)NSDictionary *loginStatus;
@end


@implementation AbsEnterObject

//单例模式
static AbsEnterObject* Instance = nil;



+(instancetype)sharedInstance{
    static dispatch_once_t once;
    dispatch_once(&once, ^{

        Instance = [[super alloc] init];
        [self getmethod];

    });



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


-(void )getmethod{

    _loginStatus=@{@"Login":@"MainViewController",@"Lunch":@"LunchVC",@"Log":@"LogVC",@"Main":@"MainViewController"};
}



-(UIViewController *)resposeEnter{

    //1、进行判断 并且保存
    _currentLoginStatuc = [[NSUserDefaults standardUserDefaults] objectForKey:CurrentLoginStatuc];


    if (_currentLoginStatuc==nil) {

        [[NSUserDefaults standardUserDefaults]setObject:[_loginStatus objectForKey:@"Lunch"] forKey:CurrentLoginStatuc];



 }

    if ([_currentLoginStatuc isEqualToString:[_loginStatus objectForKey:@"Lunch"]]){

        [[NSUserDefaults standardUserDefaults]setObject:[_loginStatus objectForKey:@"Log"] forKey:CurrentLoginStatuc];


    }


    if ([_currentLoginStatuc isEqualToString:[_loginStatus objectForKey:@"Log"]]){

        [[NSUserDefaults standardUserDefaults]setObject:[_loginStatus objectForKey:@"Main"] forKey:CurrentLoginStatuc];

        
    }


    //1、进行判断 并且保存
    _currentLoginStatuc = [[NSUserDefaults standardUserDefaults] objectForKey:CurrentLoginStatuc];
    UIViewController *VC=[[NSClassFromString(_currentLoginStatuc) alloc]init];
    [[NSUserDefaults standardUserDefaults]synchronize];
    return VC;


}


@end
