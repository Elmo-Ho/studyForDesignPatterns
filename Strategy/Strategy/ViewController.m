//
//  ViewController.m
//  Strategy
//
//  Created by SkyHarute on 2017/5/16.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person = [Person personWithType:ManType];
    [person useComputerDoSomeThing];
}


@end
