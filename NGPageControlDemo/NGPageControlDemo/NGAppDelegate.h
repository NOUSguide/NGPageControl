//
//  NGAppDelegate.h
//  NGPageControlDemo
//
//  Created by Philip Messlehner on 29.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NGViewController;

@interface NGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NGViewController *viewController;

@end
