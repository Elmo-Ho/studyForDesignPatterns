//
//  NYCheesePizza.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "NYCheesePizza.h"

@implementation NYCheesePizza

- (instancetype)prepare{
    NSLog(@"纽约芝士披萨准备");
    return self;
}

@end
