//
//  Pizza.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "Pizza.h"

@interface Pizza ()

@property (nonatomic, copy) NSString *douth;
@property (nonatomic, copy) NSString *sauce;
@property (nonatomic, copy) NSString *cheese;
@property (nonatomic, copy) NSString *veggies;

@end

@implementation Pizza

- (instancetype)prepare{
    NSLog(@"开始原味pizza准备");
    NSLog(@"准备了%@,%@,%@,%@",_douth,_sauce,_cheese,_veggies);
    return self;
}

- (instancetype)bake{
    NSLog(@"开始原味pizza烘烤");
    return self;
}

- (instancetype)cut{
    NSLog(@"开始原味pizza切");
    return self;
}

- (instancetype)box{
    NSLog(@"开始原味pizza打包");
    return self;
}

- (void)setIngredientFactory:(PizzaIngredientFactory *)ingredientFactory{
    _ingredientFactory = ingredientFactory;
    _douth = [ingredientFactory createDough];
    _sauce = [ingredientFactory createSauce];
    _cheese = [ingredientFactory createCheese];
    _veggies = [ingredientFactory createVeggies];
}
@end
