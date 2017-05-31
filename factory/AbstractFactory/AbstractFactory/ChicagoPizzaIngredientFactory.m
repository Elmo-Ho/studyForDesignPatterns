//
//  ChicagoPizzaIngredientFactory.m
//  AbstractFactory
//
//  Created by SkyHarute on 2017/5/29.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ChicagoPizzaIngredientFactory.h"

@implementation ChicagoPizzaIngredientFactory

- (NSString *)createSauce{
    return @"芝加哥风味沙司";
}

- (NSString *)createCheese{
    return @"芝加哥风味芝士";
}

@end
