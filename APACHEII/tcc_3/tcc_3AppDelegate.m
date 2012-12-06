//
//  tcc_3AppDelegate.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "tcc_3AppDelegate.h"

@implementation tcc_3AppDelegate

@synthesize window = _window;
@synthesize tabBar;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    [self.window addSubview:tabBar.view];
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
