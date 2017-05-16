//
//  UseComputerDoSthBehave.m
//  Strategy
//
//  Created by SkyHarute on 2017/5/16.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

        #import "UseComputerDoSthBehave.h"

        @implementation UseComputerDoSthBehave

        + (UseComputerDoSthBehave *)useComputerDoSthBehaveWithPersonType:(PersonType)personType{
            UseComputerDoSthBehave *instance = [[UseComputerDoSthBehave alloc] init];
            instance.personType = personType;
            return instance;
        }

        - (void)useComputerDoSth{
            switch (self.personType) {
                case ManType:
                    NSLog(@"工作");
                    break;
                case WomanType:
                    NSLog(@"购物");
                    break;
                case ChildrenType:
                    NSLog(@"玩游戏");
                    break;
                default:
                    break;
            }
        }
        @end
