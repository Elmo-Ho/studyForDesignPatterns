//
//  TVOffCommand.h
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "BaseCommand.h"

@class TV;

@interface TVOffCommand : BaseCommand

- (instancetype)initWithTV:(TV*)tv;

@end
