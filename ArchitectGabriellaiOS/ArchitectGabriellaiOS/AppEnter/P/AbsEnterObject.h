//
//  AbsEnterObject.h
//  ArchitectGabriellaiOS
//
//  Created by Gabriella on 2017/6/1.
//  Copyright © 2017年 Gabriella. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbsEnterObject : NSObject

@property (nonatomic,copy)NSString *nextEnter;

+(instancetype)sharedInstance;
-(UIViewController *)resposeEnter;
@end
