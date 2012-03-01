//
//  NGPageControl.m
//  NGPageControlDemo
//
//  Created by Philip Messlehner on 29.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//
//  Created after reading following Blogpost from OniDev
//  http://www.onidev.com/2009/12/02/customisable-uipagecontrol/
//

#import "NGPageControl.h"

@implementation NGPageControl

@synthesize imageForDefaultPageIndicator = _imageForDefaultPageIndicator;
@synthesize imageForCurrentPageIndicator = _imageForCurrentPageIndicator;

////////////////////////////////////////////////////////////////////////
#pragma mark - UIPageControl
////////////////////////////////////////////////////////////////////////

- (void)setCurrentPage:(NSInteger)currentPage {
    [super setCurrentPage:currentPage];
    [self updateDots];
}


- (void)updateCurrentPageDisplay {
    [super updateCurrentPageDisplay];
    [self updateDots];
}

- (void)endTrackingWithTouch:(UITouch*)touch withEvent:(UIEvent*)event {
    [super endTrackingWithTouch:touch withEvent:event];    
    [self updateDots];
}

////////////////////////////////////////////////////////////////////////
#pragma mark - NGPageControl
////////////////////////////////////////////////////////////////////////

- (void)updateDots {
    self.backgroundColor = [UIColor clearColor];
    if(self.imageForCurrentPageIndicator && self.imageForDefaultPageIndicator) {
        int i = 0;
        for (UIImageView *dotView  in self.subviews) {
            if ([dotView isKindOfClass:[UIImageView class]]) {
                dotView.image = (i == self.currentPage ? self.imageForCurrentPageIndicator : self.imageForDefaultPageIndicator);
                i++;
            }
        }
    }
}

- (void)setImageForDefaultPageIndicator:(UIImage*)image {
    if (_imageForDefaultPageIndicator != image) {
        _imageForDefaultPageIndicator = image;
        [self updateDots];
    }
}

- (void)setImageForCurrentPageIndicator:(UIImage*)image {
    if (_imageForCurrentPageIndicator != image) {
        _imageForCurrentPageIndicator = image;
        [self updateDots];
    }
}

@end
