//
//  Beverage.h
//  Decorator
//
//  Created by SkyHarute on 2017/5/21.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beverage : NSObject

@property (nonatomic, copy) NSString *beverageDesc;

@property (nonatomic, strong, readonly) Beverage *beverage;

- (NSInteger)cost;

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end
