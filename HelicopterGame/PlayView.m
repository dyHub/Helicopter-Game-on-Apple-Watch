//
//  PlayView.m
//  HelicopterGame
//
//  Created by Yuhan Dai on 12/21/15.
//  Copyright © 2015 Yuhan Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayView.h"

@interface PlayView ()

@end

@implementation PlayView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Start = YES;
    Y = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if (Start==YES) {
        // set timer
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
        
        // Reset Start
        Start = NO;

    }
    Y = -10;
}

-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    Y = 5;
}

-(void)HeliMove{
    // Move the Helicopter according to the user interact
    Helicopter.center = CGPointMake(Helicopter.center.x, Helicopter.center.y + Y);
}


@end