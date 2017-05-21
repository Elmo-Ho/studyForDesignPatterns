//
//  ViewController.m
//  Decorator
//
//  Created by SkyHarute on 2017/5/21.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ViewController.h"
#import "DarkRoast.h"
#import "Milk.h"
#import "Mocha.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test1];
}

/**
 获取到一杯普通的深焙咖啡
 */
- (void)test1{
    
    //获取到一杯普通的深焙咖啡
    DarkRoast *darkRoast = [[DarkRoast alloc] init];
    NSLog(@"饮品名称:%@,价格:%ld",darkRoast.beverageDesc,[darkRoast cost]);
    
    //加入一杯牛奶后的深焙咖啡
    Beverage *oneMilkDarkRoast = [[Milk alloc] initWithBeverage:darkRoast];
    NSLog(@"饮品名称:%@,价格:%ld",oneMilkDarkRoast.beverageDesc,[oneMilkDarkRoast cost]);
    
    //向加入一杯牛奶后的深焙咖啡再次加入摩卡
    Beverage *oneMilkAndOneMochaDarkRoast = [[Mocha alloc] initWithBeverage:oneMilkDarkRoast];
    NSLog(@"饮品名称:%@,价格:%ld",oneMilkAndOneMochaDarkRoast.beverageDesc,[oneMilkAndOneMochaDarkRoast cost]);
}



@end
