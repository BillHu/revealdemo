//
//  MGCCAppDelegate.h
//  revealdemo
//
//  Created by BillHu on 13-2-5.
//  Copyright (c) 2013年 Monkey Geeky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPRevealSideViewController.h"


@class MGCCViewController;

@interface MGCCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MGCCViewController *viewController;
@property (strong, nonatomic) PPRevealSideViewController *revealSideViewController;
@end
