//
//  PizzaIngredientFactory.m
//  AbstractFactory
//
//  Created by SkyHarute on 2017/5/29.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "PizzaIngredientFactory.h"

@implementation PizzaIngredientFactory

- (NSString *)createDough{
    return @"普通面团";
}

- (NSString *)createSauce{
    return @"普通沙司";
}

- (NSString *)createCheese{
    return @"普通芝士";
}

- (NSString *)createVeggies{
    return @"普通蔬菜";
}
@end
