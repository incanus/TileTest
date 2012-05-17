//
//  TTAppDelegate.m
//  TileTest
//
//  Created by Justin Miller on 5/17/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "TTAppDelegate.h"

#import "TTViewController.h"

@implementation TTAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = [[TTViewController alloc] initWithNibName:nil bundle:nil];

    [self.window makeKeyAndVisible];

    return YES;
}

@end