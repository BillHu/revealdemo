//
//  MGCCViewController.m
//  revealdemo
//
//  Created by BillHu on 13-2-5.
//  Copyright (c) 2013年 Monkey Geeky. All rights reserved.
//

#import "MGCCViewController.h"
#import "MGCCSecondViewController.h"
#import "PPRevealSideViewController.h"

@interface MGCCViewController ()

@end

@implementation MGCCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                              style:UIBarButtonItemStylePlain
                                                             target:self
                                                             action:@selector(showRight)];
    self.navigationItem.rightBarButtonItem = right;
}

- (void) showRight {
    MGCCSecondViewController *second = [[MGCCSecondViewController alloc] init];
    PPRevealSideViewController *revealSideViewController = (PPRevealSideViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    [revealSideViewController pushViewController:second onDirection:PPRevealSideDirectionRight withOffset:180 animated:YES];
}

// Supported orientations: Landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

@end
