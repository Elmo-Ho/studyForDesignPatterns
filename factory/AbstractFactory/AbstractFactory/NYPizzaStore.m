//
//  NYPizzaStore.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYCheesePizza.h"
#import "NYPepperoniPizza.h"
#import "NYPizzaIngredientFactory.h"

@implementation NYPizzaStore

- (Pizza *)createPizzaWithPizzaType:(PizzaType)pizzaType{
    Pizza *pizza;
    switch (pizzaType) {
        case cheesePizza:
            pizza = [NYCheesePizza new];
            break;
        case pepperoniPizza:
            pizza = [NYPepperoniPizza new];
            break;
        default:
            pizza = [Pizza new];
            break;
    }
    pizza.ingredientFactory = [NYPizzaIngredientFactory new];
    return pizza;
}
@end
