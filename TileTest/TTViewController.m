//
//  TTViewController.m
//  TileTest
//
//  Created by Justin Miller on 5/17/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "TTViewController.h"

#import "TTTileView.h"

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"forest.jpg"]];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    scrollView.scrollsToTop = NO;
    
    [self.view addSubview:scrollView];
    
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width * 3, self.view.bounds.size.height * 3)];
    
    TTTileView *layerOne = [[TTTileView alloc] initWithFrame:containerView.bounds image:[UIImage imageNamed:@"orchid.jpg"]];
    
    layerOne.tag = 1;
    
    [containerView addSubview:layerOne];
    
    TTTileView *layerTwo = [[TTTileView alloc] initWithFrame:containerView.bounds image:[UIImage imageNamed:@"rose.jpg"]];
    
    layerTwo.tag = 2;
    
    [containerView addSubview:layerTwo];
    
    scrollView.contentSize = containerView.bounds.size;
    
    [scrollView addSubview:containerView];
    
    UISlider *sliderOne = [[UISlider alloc] initWithFrame:CGRectMake(10, 10, 100, 20)];
    
    [sliderOne addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
    
    sliderOne.value = layerOne.alpha;
    sliderOne.tag = 11;
    
    [self.view addSubview:sliderOne];
    
    UISlider *sliderTwo = [[UISlider alloc] initWithFrame:CGRectMake(10, 40, 100, 20)];
    
    [sliderTwo addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
    
    sliderTwo.value = layerTwo.alpha;
    sliderTwo.tag = 12;
    
    [self.view addSubview:sliderTwo];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -

- (void)sliderChanged:(UISlider *)slider
{
    [[self.view viewWithTag:(slider.tag - 10)] setAlpha:slider.value];
}

@end