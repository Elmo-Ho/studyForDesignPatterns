//
//  BaseCommand.h
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/2.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BaseCommand : NSObject

- (void)excute;
- (void)undo;

@end
