//
//  ViewController.m
//  AbstractFactory
//
//  Created by SkyHarute on 2017/5/29.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ViewController.h"
#import "NYPizzaStore.h"
#import "ChicagoPizzaStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self getPizza];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getPizza{
    
    PizzaStore *nyPizzaStore = [[NYPizzaStore alloc] init];
    Pizza *nyCheesePizza = [nyPizzaStore orderPizzaWithPizzaType:cheesePizza];
}

@end
