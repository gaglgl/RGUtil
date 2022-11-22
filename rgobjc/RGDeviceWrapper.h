//
//  RGDeviceWrapper.h
//  RGUtil
//
//  Created by gaglgl on 2022/11/22.
//  Copyright © 2022 gaglgl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RGDeviceWrapper : NSObject

+ (CGSize)screenSize;
+ (CGFloat)homeIndicatorHeight;
+ (CGFloat)statusBarHeight;

@end

NS_ASSUME_NONNULL_END
