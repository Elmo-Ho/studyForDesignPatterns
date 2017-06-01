//
//  PizzaIngredientFactory.h
//  AbstractFactory
//
//  Created by SkyHarute on 2017/5/29.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PizzaIngredientFactory : NSObject

/**
 面团
 */
- (NSString *)createDough;

/**
 沙司
 */
- (NSString *)createSauce;

/**
 创建芝士
 */
- (NSString *)createCheese;

/**
 创建蔬菜
 */
- (NSString *)createVeggies;

@end
