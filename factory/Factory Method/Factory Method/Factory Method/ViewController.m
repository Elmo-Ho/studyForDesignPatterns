//
//  ViewController.m
//  Factory Method
//
//  Created by SkyHarute on 2017/5/23.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ViewController.h"
#import "PizzaStore.h"
#import "NYPizzaStore.h"
#import "ChicagoPizzaStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //获取普通pizza
//    [self getBasePizza];
    
    //获得纽约风味pizza
    [self getNYPizza];
}


- (void)getBasePizza{
    PizzaStore *pizzaStore = [PizzaStore new];
    Pizza *pizza = [pizzaStore orderPizzaWithPizzaType:nil];
}

- (void)getNYPizza{
    
    //创建纽约风味pizza
    NYPizzaStore *nyPizzaStore = [[NYPizzaStore alloc] init];
    
    Pizza *nyCheesePizza = [nyPizzaStore orderPizzaWithPizzaType:cheesePizza];
    Pizza *nyPepperoniPizza = [nyPizzaStore orderPizzaWithPizzaType:pepperoniPizza];
}

@end
