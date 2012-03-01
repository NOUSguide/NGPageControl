//
//  NGViewController.m
//  NGPageControlDemo
//
//  Created by Philip Messlehner on 29.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import "NGViewController.h"

@interface NGViewController ()

@property (nonatomic, strong) NGPageControl *pageControl;

- (void)prevButtonPressed:(id)sender;
- (void)nextButtonPressed:(id)sender;

@end

@implementation NGViewController

@synthesize pageControl = _pageControl;

////////////////////////////////////////////////////////////////////////
#pragma mark - UIViewController
////////////////////////////////////////////////////////////////////////

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *prevButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [prevButton setTitle:@"Prev" forState:UIControlStateNormal];
    prevButton.frame = CGRectMake(20, 20, 72, 37);
    [prevButton addTarget:self action:@selector(prevButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:prevButton];
    
    UIButton *nextbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nextbutton setTitle:@"Next" forState:UIControlStateNormal];
    nextbutton.frame = CGRectMake(223, 20, 72, 37);
    [nextbutton addTarget:self action:@selector(nextButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextbutton];
    
    self.pageControl = [[NGPageControl alloc] initWithFrame:CGRectMake(20, 404, 275, 36)];
    self.pageControl.imageForCurrentPageIndicator = [UIImage imageNamed:@"SelectedPageIndicator.png"];
    self.pageControl.imageForDefaultPageIndicator = [UIImage imageNamed:@"UnselectedPageIndicator.png"];
    self.pageControl.numberOfPages = 7;
    self.pageControl.currentPage = 0;    
    [self.view addSubview:self.pageControl];
}

////////////////////////////////////////////////////////////////////////
#pragma mark - NGViewController
////////////////////////////////////////////////////////////////////////

- (void)prevButtonPressed:(id)sender {
    if (self.pageControl.currentPage != 0) {
        self.pageControl.currentPage --;
    }
}

- (void)nextButtonPressed:(id)sender {
    if (self.pageControl.currentPage + 1 != self.pageControl.numberOfPages) {
        self.pageControl.currentPage ++;
    }
}

@end
