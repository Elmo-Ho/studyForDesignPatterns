//
//  TVOffCommand.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "TVOffCommand.h"
#import "TV.h"

@interface TVOffCommand ()

@property (nonatomic, strong) TV *tv;

@end

@implementation TVOffCommand

- (instancetype)initWithTV:(TV *)tv{
    if (self = [super init]) {
        _tv = tv;
    }
    return self;
}

- (void)excute{
    [self.tv off];
}

- (void)undo{
    [self.tv on];
}
@end
