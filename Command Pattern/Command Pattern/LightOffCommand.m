//
//  LightOffCommand.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand ()

@property (nonatomic, strong)Light *light;

@end

@implementation LightOffCommand

- (instancetype)initWithLight:(Light *)light{
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)excute{
    [self.light off];
}

- (void)undo{
    [self.light on];
}

@end
