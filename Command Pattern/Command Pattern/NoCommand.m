//
//  NoCommand.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "NoCommand.h"

@implementation NoCommand

- (void)excute{
    NSLog(@"don't do anything");
}

- (void)undo{
    NSLog(@"don't do anything");
}

@end
