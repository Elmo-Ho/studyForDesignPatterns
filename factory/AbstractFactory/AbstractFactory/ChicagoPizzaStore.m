//
//  ChicagoPizzaStore.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoCheesePizza.h"
#import "ChicagoPepperoniPizza.h"

@implementation ChicagoPizzaStore

- (Pizza *)createPizzaWithPizzaType:(PizzaType)pizzaType{
    switch (pizzaType) {
        case cheesePizza:
            return [ChicagoCheesePizza new];
            break;
        case pepperoniPizza:
            return [ChicagoPepperoniPizza new];
            break;
        default:
            return [Pizza new];
            break;
    }
}

@end
