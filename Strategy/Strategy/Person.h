//
//  Person.h
//  Strategy
//
//  Created by SkyHarute on 2017/5/16.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PersonType){
    ManType = 0,
    WomanType,
    ChildrenType,
};

@interface Person : NSObject

+ (Person *)personWithType:(PersonType)personType;

- (void)useComputerDoSomeThing;

@end
