//
//  Beverage.m
//  Decorator
//
//  Created by SkyHarute on 2017/5/21.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "Beverage.h"

@interface Beverage ()

@property (nonatomic, strong, readwrite) Beverage *beverage;

@end

@implementation Beverage

- (instancetype)initWithBeverage:(Beverage *)beverage{
    if (self = [super init]) {
        self.beverage = beverage;
    }
    return self;
}

- (NSInteger)cost{
    //子类若不实现花销,则会采用父类,这会导致可能与我们的设计不同
    return 0;
}

@end
