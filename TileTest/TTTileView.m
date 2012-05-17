//
//  TTTileView.m
//  TileTest
//
//  Created by Justin Miller on 5/17/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "TTTileView.h"

#import <QuartzCore/QuartzCore.h>

@interface TTTileView ()

@property (nonatomic, strong) UIImage *image;

@end

#pragma mark -

@implementation TTTileView

@synthesize image=_image;

- (id)initWithFrame:(CGRect)frame image:(UIImage *)image
{
    self = [super initWithFrame:frame];

    if (self)
    {
        _image = image;
        
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 0.75;
    }

    return self;
}

+ (Class)layerClass
{
    return [CATiledLayer class];
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)context
{
    CGContextSetFillColorWithColor(context, [[UIColor colorWithPatternImage:self.image] CGColor]);
    CGContextFillRect(context, CGContextGetClipBoundingBox(context));
}

@end