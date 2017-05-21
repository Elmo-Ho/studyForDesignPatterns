//
//  Milk.m
//  Decorator
//
//  Created by SkyHarute on 2017/5/21.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "Milk.h"

@implementation Milk

- (NSInteger)cost{
    return [self.beverage cost] + 8;
}

- (NSString *)beverageDesc{
    return [NSString stringWithFormat:@"%@ 添加 Milk",self.beverage.beverageDesc];
}

@end
