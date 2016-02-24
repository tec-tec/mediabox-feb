//
//  UIColor+MoreColors.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 24/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "UIColor+MoreColors.h"

@implementation UIColor (MoreColors)

+ (UIColor *)pinkColor {

    return [UIColor colorWithRed:1.0 green:0.078 blue:0.576 alpha:1];

}

- (UIColor *)semiTranslucent {

    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;

    [self getRed:&red green:&green blue:&blue alpha:&alpha];

    return [UIColor colorWithRed:red green:green blue:blue alpha:(CGFloat)alpha/2];
}
@end
