//
//  PizzaStore.h
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface PizzaStore : NSObject

//这里暴露出来仅仅是为了继承方便
- (Pizza *)createPizzaWithPizzaType:(PizzaType)pizzaType;

- (Pizza *)orderPizzaWithPizzaType:(PizzaType)pizzaType;

@end
