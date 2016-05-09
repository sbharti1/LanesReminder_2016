//
//  AppDelegate.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (CustomColor)

// Primary Colors
+ (instancetype)orangeColor;
+ (instancetype)yellowColor;
+ (instancetype)greyColor;
+ (instancetype)whiteColor;

// Secondary Colors
+ (instancetype)deepRedColor;
+ (instancetype)deepBlueColor;
+ (instancetype)deepGreenColor;
+ (instancetype)offWhiteColor;
+ (instancetype)lightGreyColor;
+ (instancetype)mediumGrayColor;
+ (instancetype)warmGreyColor;

// Accent Colors
+ (instancetype)burgundyColor;
+ (instancetype)brightGreenColor;
+ (instancetype)periwinkleColor;

// Text Colors
+ (instancetype)textColor;

// Pressed Colors
+ (instancetype)orangePressedColor;
+ (instancetype)greyPressedColor;
+ (instancetype)bluePressedColor;

// CP Level Colors
+ (instancetype)goldEliteBackgroundColor;
+ (instancetype)platinumEliteBackgroundColor;
+ (instancetype)diamondEliteBackgroundColor;
+ (instancetype)diamondEliteFontColor;

+ (instancetype)brownColor;

+ (instancetype)navBarTitleTextColor;

+ (instancetype)navBarButtonTextColor;

@end
