//
//  PizzaStore.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "PizzaStore.h"


@implementation PizzaStore

- (Pizza *)createPizzaWithPizzaType:(PizzaType)pizzaType{
    return [Pizza new];
}

- (Pizza *)orderPizzaWithPizzaType:(PizzaType)pizzaType{
    Pizza *pizza = [self createPizzaWithPizzaType:pizzaType];
    return pizza.prepare.bake.cut.box;
}
@end
