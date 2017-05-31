//
//  NYPizzaIngredientFactory.m
//  AbstractFactory
//
//  Created by SkyHarute on 2017/5/29.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "NYPizzaIngredientFactory.h"

@implementation NYPizzaIngredientFactory

- (NSString *)createSauce{
    return @"纽约风味沙司";
}

- (NSString *)createVeggies{
    return @"纽约风味蔬菜";
}

@end
