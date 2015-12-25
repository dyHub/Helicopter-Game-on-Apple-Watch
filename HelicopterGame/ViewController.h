//
//  ViewController.h
//  HelicopterGame
//
//  Created by Yuhan Dai on 12/21/15.
//  Copyright © 2015 Yuhan Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

int HighestScore;

@interface ViewController : UIViewController
{
    
    // Mark: Properties
    __weak IBOutlet UIButton *StartButton;
    
    __weak IBOutlet UILabel *ScoreLabel;
    
    // NSTimer *timer;
    
}
@end

