//
//  LightOnCommand.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@interface LightOnCommand ()

@property (nonatomic, strong)Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light{
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)excute{
    [self.light on];
}

- (void)undo{
    [self.light off];
}
@end
