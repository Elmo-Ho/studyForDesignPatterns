//
//  Person.m
//  Strategy
//
//  Created by SkyHarute on 2017/5/16.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "Person.h"
#import "Man.h"
#import "Woman.h"
#import "Children.h"

@implementation Person

+ (Person *)personWithType:(PersonType)personType{
    
    switch (personType) {
        case ManType:
            return [Man new];
            break;
            
        case WomanType:
            return [Woman new];
            break;
            
        case ChildrenType:
            return [Children new];
            break;
            
        default:
            return [Person new];
            break;
    }
}

- (void)useComputerDoSomeThing{
    
}
@end
