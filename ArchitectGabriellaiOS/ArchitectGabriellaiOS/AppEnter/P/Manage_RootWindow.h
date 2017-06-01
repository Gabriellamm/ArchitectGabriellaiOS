//
//  Manage_RootWindow.h
//  Architect_Gabriella_iOS
//
//  Created by Gabriella on 2017/5/27.
//  Copyright © 2017年 Gabriella. All rights reserved.


/**
 AppEnterClient:
 Manage_RootWindow *manageWindow= [Manage_RootWindow  sharedInstance];
 self.window.rootViewController=[manageWindow getRootVC];

 */
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Manage_RootWindow : NSObject

+(instancetype)sharedInstance;

-(UIViewController *)getRootVC;
-(UIViewController *)resposeEnter;
@end
