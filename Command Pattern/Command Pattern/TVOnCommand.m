//
//  TVOnCommand.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/5.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "TVOnCommand.h"
#import "TV.h"

@interface TVOnCommand ()

@property (nonatomic, strong) TV *tv;

@end

@implementation TVOnCommand

- (instancetype)initWithTV:(TV *)tv{
    if (self = [super init]) {
        _tv = tv;
    }
    return self;
}

- (void)excute{
    [self.tv on];
}

- (void)undo{
    [self.tv off];
}
@end
