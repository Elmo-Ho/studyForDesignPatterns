//
//  Pizza.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

        #import "Pizza.h"

        @implementation Pizza

        - (instancetype)prepare{
            NSLog(@"开始原味pizza准备");
            return self;
        }

        - (instancetype)bake{
            NSLog(@"开始原味pizza烘烤");
            return self;
        }

        - (instancetype)cut{
            NSLog(@"开始原味pizza切");
            return self;
        }

        - (instancetype)box{
            NSLog(@"开始原味pizza打包");
            return self;
        }
        @end
