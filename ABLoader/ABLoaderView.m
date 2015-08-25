//
//  ABLoaderView.m
//  ABLoader
//
//  Created by Paolo Musolino on 06/07/15.
//  Copyright (c) 2015 IQUII. All rights reserved.
//

#import "ABLoaderView.h"

@implementation ABLoaderView

-(instancetype)initWithImage:(UIImage*)image spinnerSize:(float)spinnerSize animDuration:(float)duration{
    self = [super initWithFrame:CGRectMake(0.0, 0.0, spinnerSize, spinnerSize)];
    if (self) {
        [self setupSpinKitAnimationInLayer:self.layer withSize:CGSizeMake(spinnerSize, spinnerSize) color:[UIColor clearColor] image:image duration:duration];
    }
    return self;
}


-(void)setupSpinKitAnimationInLayer:(CALayer*)layer withSize:(CGSize)size color:(UIColor*)color image:(UIImage*)image duration:(float)duration;
{
    CALayer *square = [CALayer layer];
    square.frame = CGRectInset(CGRectMake(0.0, 0.0, size.width, size.height), 2.0, 2.0);
    square.backgroundColor = color.CGColor;
    
    square.anchorPoint = CGPointMake(0.5, 0.5);
    square.anchorPointZ = 0.5;
    square.shouldRasterize = YES;
    square.rasterizationScale = [[UIScreen mainScreen] scale];
    square.contents = (id)image.CGImage;
    [layer addSublayer:square];
    
    CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    anim.removedOnCompletion = NO;
    anim.repeatCount = HUGE_VALF;
    anim.duration = duration;
    anim.keyTimes = @[@(0.0), @(0.5), @(0.5), @(1.0)];

    anim.values = @[
                    
                    [NSValue valueWithCATransform3D:RTSpinKit3DRotationWithPerspective(1.0/120.0, 0, 0, 0, 0)],
                    
                    [NSValue valueWithCATransform3D:RTSpinKit3DRotationWithPerspective(1.0/120.0, M_PI_2, 0.0, -1.0, 0.0)],
                    
                    
                    
                    [NSValue valueWithCATransform3D:RTSpinKit3DRotationWithPerspective(1.0/120.0, -M_PI_2, 0.0, -1.0, 0.0)],
                    
                    [NSValue valueWithCATransform3D:RTSpinKit3DRotationWithPerspective(1.0/120.0, 0, 0, 0, 0)],
                    ];
    
    [square addAnimation:anim forKey:@"abloader-animation"];
}



CATransform3D RTSpinKit3DRotationWithPerspective(CGFloat perspective,
                                                 CGFloat angle,
                                                 CGFloat x,
                                                 CGFloat y,
                                                 CGFloat z)
{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = perspective;
    return CATransform3DRotate(transform, angle, x, y, z);
}

@end
