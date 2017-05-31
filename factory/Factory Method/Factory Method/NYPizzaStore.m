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

@implementation NYPizzaStore

- (Pizza *)createPizzaWithPizzaType:(PizzaType)pizzaType{
    switch (pizzaType) {
        case cheesePizza:
            return [NYCheesePizza new];
            break;
        case pepperoniPizza:
            return [NYPepperoniPizza new];
            break;
        default:
            return [Pizza new];
            break;
    }
}
@end
