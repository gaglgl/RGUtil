//
//  RGDeviceWrapper.m
//  RGUtil
//
//  Created by gaglgl on 2022/11/22.
//  Copyright © 2022 gaglgl. All rights reserved.
//

#import "RGDeviceWrapper.h"

@implementation RGDeviceWrapper
+ (CGSize)screenSize {
    return [UIScreen mainScreen].bounds.size;
}
+ (CGFloat)homeIndicatorHeight {
    NSString * const key = @"homeIndicatorHeight";
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSNumber *height = [userDefault objectForKey:key];
    CGFloat hf = 0.0;
    if (!height) {
        hf = [RGDeviceWrapper statusBarHeight];
        if (hf > 20) {
            height = [NSNumber numberWithDouble:34.0];
        } else {
            height = [NSNumber numberWithDouble:0.0];
        }
        [userDefault setObject:height forKey:key];
    } else {
        hf = [height doubleValue];
    }
    return hf;
}

+ (CGFloat)statusBarHeight {
    NSString * const key = @"statusBarHeight";
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSNumber *height = [userDefault objectForKey:key];
    CGFloat hf = 0.0;
    if (!height) {
        if (@available(iOS 13.0, *)) {
            hf = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager.statusBarFrame.size.height;
        } else {
            hf = [UIApplication sharedApplication].statusBarFrame.size.height;
        }
        height = [NSNumber numberWithDouble:hf];
        [userDefault setObject:height forKey:key];
    } else {
        hf = [height doubleValue];
    }
    return hf;
}
@end
