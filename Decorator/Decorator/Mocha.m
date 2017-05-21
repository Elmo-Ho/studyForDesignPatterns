//
//  Mocha.m
//  Decorator
//
//  Created by SkyHarute on 2017/5/21.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (NSInteger)cost{
    return [self.beverage cost] + 10;
}

- (NSString *)beverageDesc{
    return [NSString stringWithFormat:@"%@ 添加 Mocha",self.beverage.beverageDesc];
}

@end
