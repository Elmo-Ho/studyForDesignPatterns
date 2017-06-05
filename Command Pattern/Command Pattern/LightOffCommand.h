//
//  LightOffCommand.h
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "BaseCommand.h"

@class Light;

@interface LightOffCommand : BaseCommand

- (instancetype)initWithLight:(Light*)light;

@end
