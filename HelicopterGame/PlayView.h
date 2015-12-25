//
//  PlayView.h
//  HelicopterGame
//
//  Created by Yuhan Dai on 12/21/15.
//  Copyright © 2015 Yuhan Dai. All rights reserved.
//

#ifndef PlayView_h
#define PlayView_h

#import <UIKit/UIKit.h>

// Helicopter position difference
int Y;
// Start the game
BOOL Start;
// End Game
BOOL End;
// Background moving speed
int BackSpeed;
// Scores
int Score;
// Highest Score
int HighScore;

// declare screen variables
CGRect screenRect;
CGFloat screenWidth;
CGFloat screenHeight;

@interface PlayView : UIViewController
{
    
    // Mark: Properties
    // duration
    NSTimer *timer;
    NSTimer *Scorer;
    
    // ui image views
    __weak IBOutlet UIImageView *Helicopter;
    // obstacle views
    __weak IBOutlet UIImageView *obstacle1;
    __weak IBOutlet UIImageView *obstacle2;
    // top obstacle views
    __weak IBOutlet UIImageView *Top1;
    __weak IBOutlet UIImageView *Top2;
    __weak IBOutlet UIImageView *Top3;
    __weak IBOutlet UIImageView *Top4;
    __weak IBOutlet UIImageView *Top5;
    __weak IBOutlet UIImageView *Top6;
    __weak IBOutlet UIImageView *Top7;
    // bottom obstacle views
    __weak IBOutlet UIImageView *Bottom1;
    __weak IBOutlet UIImageView *Bottom2;
    __weak IBOutlet UIImageView *Bottom3;
    __weak IBOutlet UIImageView *Bottom4;
    __weak IBOutlet UIImageView *Bottom5;
    __weak IBOutlet UIImageView *Bottom6;
    __weak IBOutlet UIImageView *Bottom7;
    
    // Game End labels
    __weak IBOutlet UILabel *GameOverLabel;
    
}

// -------- functions ----------- //
// function when move the helicopter
-(void)HeliMove;
// Scoring
-(void)Scoring;
// function when collied
-(void)Collision;
// function after collied (End the game)
-(void)EndGame;

// ------ add Scores label -------- //
@property(nonatomic, retain) UILabel *ScoreLabel;

@end

#endif /* PlayView_h */
