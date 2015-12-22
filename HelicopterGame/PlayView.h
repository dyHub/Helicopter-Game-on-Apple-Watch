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

int Y;
BOOL Start;

@interface PlayView : UIViewController
{
    
    // Mark: Properties

    __weak IBOutlet UIImageView *Helicopter;
    
    NSTimer *timer;
    
}

-(void)HeliMove;

@end

#endif /* PlayView_h */
