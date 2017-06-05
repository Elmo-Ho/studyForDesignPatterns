//
//  ViewController.m
//  Command Pattern
//
//  Created by SkyHarute on 2017/6/1.
//  Copyright © 2017年 SkyHarute. All rights reserved.
//

#import "ViewController.h"
#import "NoCommand.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "TVOnCommand.h"
#import "TVOffCommand.h"
#import "TV.h"
#import "Light.h"

static const int SWITCH_COUNT = 2;

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *onCommandArray;
@property (nonatomic, strong) NSMutableArray *offCommandArray;
@property (nonatomic, strong) BaseCommand *lastCommand;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self p_createCommand];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  private
- (void)p_createCommand{
    TV *tv = [TV new];
    TVOnCommand *tvOnCommand = [[TVOnCommand alloc] initWithTV:tv];
    TVOffCommand *tvOffCommand = [[TVOffCommand alloc] initWithTV:tv];
    
    Light *light = [Light new];
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:light];
    LightOffCommand *lightOffCommand = [[LightOffCommand alloc] initWithLight:light];
    
    self.onCommandArray[0] = lightOnCommand;
    self.onCommandArray[1] = tvOnCommand;
    
    self.offCommandArray[0] = lightOffCommand;
    self.offCommandArray[1] = tvOffCommand;
}

#pragma mark -  target
- (IBAction)didClickOpenLightBtn:(id)sender {
    self.lastCommand = self.onCommandArray[0];
    [self.lastCommand  excute];
}

- (IBAction)didClickCloseLightBtn:(id)sender {
    self.lastCommand = self.offCommandArray[0];
    [self.lastCommand  excute];
}

- (IBAction)didClickTurnOnTV:(id)sender {
    self.lastCommand = self.onCommandArray[1];
    [self.lastCommand  excute];
}

- (IBAction)didClickTurnOffTV:(id)sender {
    self.lastCommand = self.offCommandArray[1];
    [self.lastCommand  excute];
}

- (IBAction)didClickUndoBtn:(id)sender {
    [self.lastCommand undo];
}
#pragma mark -  set && get
- (NSMutableArray *)onCommandArray{
    if (nil == _onCommandArray) {
        _onCommandArray = [NSMutableArray array];
        NoCommand *noCommand = [NoCommand new];
        for (int i = 0; i < SWITCH_COUNT; i ++) {
            [_onCommandArray addObject:noCommand];
        }
    }
    return _onCommandArray;
}

- (NSMutableArray *)offCommandArray{
    if (nil == _offCommandArray) {
        _offCommandArray = [NSMutableArray array];
        NoCommand *noCommand = [NoCommand new];
        for (int i = 0; i < SWITCH_COUNT; i ++) {
            [_offCommandArray addObject:noCommand];
        }
    }
    return _offCommandArray;
}

@end
