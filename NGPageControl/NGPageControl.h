//
//  NGPageControl.h
//  NGPageControlDemo
//
//  Created by Philip Messlehner on 29.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//
//  Created after reading following Blogpost from OniDev
//  http://www.onidev.com/2009/12/02/customisable-uipagecontrol/
//

#import <UIKit/UIKit.h>

@interface NGPageControl : UIPageControl

@property (nonatomic, strong) UIImage *imageForDefaultPageIndicator;
@property (nonatomic, strong) UIImage *imageForCurrentPageIndicator;

@end
