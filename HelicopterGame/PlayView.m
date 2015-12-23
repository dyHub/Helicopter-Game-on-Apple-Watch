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
    BackSpeed = 8;
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
    // When touch the screen helicopter go up 8 units
    Y = -8;
}

-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // helicopter go down 5 units
    Y = 5;
}

-(void)HeliMove{
    // declare screen variables
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    // Move the Helicopter according to the user interact
    Helicopter.center = CGPointMake(Helicopter.center.x, Helicopter.center.y + Y);
    
    // Move the backgroung backwards
    obstacle1.center = CGPointMake(obstacle1.center.x - BackSpeed, obstacle1.center.y);
    obstacle2.center = CGPointMake(obstacle2.center.x - BackSpeed, obstacle2.center.y);
    Top1.center = CGPointMake(Top1.center.x -BackSpeed, Top1.center.y);
    Top2.center = CGPointMake(Top2.center.x -BackSpeed, Top2.center.y);
    Top3.center = CGPointMake(Top3.center.x -BackSpeed, Top3.center.y);
    Top4.center = CGPointMake(Top4.center.x -BackSpeed, Top4.center.y);
    Top5.center = CGPointMake(Top5.center.x -BackSpeed, Top5.center.y);
    Top6.center = CGPointMake(Top6.center.x -BackSpeed, Top6.center.y);
    Top7.center = CGPointMake(Top7.center.x -BackSpeed, Top7.center.y);
    Bottom1.center = CGPointMake(Bottom1.center.x -BackSpeed, Bottom1.center.y);
    Bottom2.center = CGPointMake(Bottom2.center.x -BackSpeed, Bottom2.center.y);
    Bottom3.center = CGPointMake(Bottom3.center.x -BackSpeed, Bottom3.center.y);
    Bottom4.center = CGPointMake(Bottom4.center.x -BackSpeed, Bottom4.center.y);
    Bottom5.center = CGPointMake(Bottom5.center.x -BackSpeed, Bottom5.center.y);
    Bottom6.center = CGPointMake(Bottom6.center.x -BackSpeed, Bottom6.center.y);
    Bottom7.center = CGPointMake(Bottom7.center.x -BackSpeed, Bottom7.center.y);
    
    // Generate background maps
    CGFloat Xposition = screenWidth + 35;
    CGFloat TopYPosition = arc4random()%55;
    CGFloat BottomYPosition = screenHeight -40 + arc4random()%55;
    // adjust obstacles
    if (obstacle1.center.x < -35)
        obstacle1.center = CGPointMake(Xposition, arc4random()%75+110);
    if (obstacle2.center.x < -35)
        obstacle2.center = CGPointMake(Xposition+arc4random()%33, arc4random()%75+110);
    // adjust top obstacles
    if (Top1.center.x < -35)
        Top1.center = CGPointMake(Xposition, TopYPosition);
    if (Top2.center.x < -35)
        Top2.center = CGPointMake(Xposition, TopYPosition);
    if (Top3.center.x < -35)
        Top3.center = CGPointMake(Xposition, TopYPosition);
    if (Top4.center.x < -35)
        Top4.center = CGPointMake(Xposition, TopYPosition);
    if (Top5.center.x < -35)
        Top5.center = CGPointMake(Xposition, TopYPosition);
    if (Top6.center.x < -35)
        Top6.center = CGPointMake(Xposition, TopYPosition);
    if (Top7.center.x < -35)
        Top7.center = CGPointMake(Xposition, TopYPosition);
    // adjust bottom obstacles
    if (Bottom1.center.x < -35)
        Bottom1.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom2.center.x < -35)
        Bottom2.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom3.center.x < -35)
        Bottom3.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom4.center.x < -35)
        Bottom4.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom5.center.x < -35)
        Bottom5.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom6.center.x < -35)
        Bottom6.center = CGPointMake(Xposition, BottomYPosition);
    if (Bottom7.center.x < -35)
        Bottom7.center = CGPointMake(Xposition, BottomYPosition);
    
}


@end