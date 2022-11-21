//
//  UIColor+RGUtil.h
//  RGUtil
//
//  Created by gaglgl on 2022/11/21.
//  Copyright © 2022 gaglgl. All rights reserved.
//
#import "UIColor+RGUtil.h"

@implementation UIColor (RGUtil)

+(UIColor *)colorFromRed:(CGFloat)red Green:(CGFloat)green Blue:(CGFloat)blue Alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red/255.0f
                           green:green/255.0f
                            blue:blue/255.0f
                           alpha:alpha/255.0f];
}
+ (UIColor *) colorFromHexString:(NSString *)hex withAlpha:(CGFloat)alpha {
    if (hex.length < 7) {
        return UIColor.clearColor;
    }
    
    NSInteger location = 1;
    NSString *colorPart = [hex substringWithRange:NSMakeRange(location, 2)];
    unsigned long ulValue = strtoul([colorPart UTF8String], 0, 16);
    NSString *ulString = [NSString stringWithFormat:@"%lu", ulValue];
    CGFloat red = [ulString intValue] / 255.0;
    
    colorPart = [hex substringWithRange:NSMakeRange(location+2, 2)];
    ulValue = strtoul([colorPart UTF8String], 0, 16);
    ulString = [NSString stringWithFormat:@"%lu", ulValue];
    CGFloat green = [ulString intValue] / 255.0;
    
    colorPart = [hex substringWithRange:NSMakeRange(location+4, 2)];
    ulValue = strtoul([colorPart UTF8String], 0, 16);
    ulString = [NSString stringWithFormat:@"%lu", ulValue];
    CGFloat blue = [ulString intValue] / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
