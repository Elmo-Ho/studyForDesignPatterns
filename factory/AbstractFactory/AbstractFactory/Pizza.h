//
//  Pizza.h
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PizzaIngredientFactory.h"

typedef NS_ENUM(NSInteger, PizzaType){
    cheesePizza = 0,
    pepperoniPizza,
};

@interface Pizza : NSObject

/**
 披萨原料工厂
 */
@property (nonatomic, strong) PizzaIngredientFactory *ingredientFactory;

/**
 准备
 */
- (instancetype)prepare;

/**
 烤
 */
- (instancetype)bake;

/**
 切
 */
- (instancetype)cut;

/**
 打包
 */
- (instancetype)box;


@end
