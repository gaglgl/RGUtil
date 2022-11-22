//
//  UIColor+RGUtil.h
//  RGUtil
//
//  Created by gaglgl on 2022/11/21.
//  Copyright © 2022 gaglgl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (RGUtil)
/**
 * Conveniently create the UIColor object from the values like rgb(r, g, b)
 * Set the alpha value by withAlpha: parameter
 */
+(UIColor *)colorFromRed:(CGFloat)red Green:(CGFloat)green Blue:(CGFloat)blue Alpha:(CGFloat)alpha;
/**
 * Convert the string pattern of  @"#RRGGBB" to the UIColor object
 * Set the alpha value by withAlpha: parameter
 */
+ (UIColor *)colorFromHexString:(NSString *)hex withAlpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
