//
//  AppDelegate.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "UIColor+CustomColor.h"


@implementation UIColor (CustomColor)

// Primary Colors
+ (instancetype)orangeColor {

    return [UIColor colorWithRed:226 / 255.0 green:104 / 255.0 blue:17 / 255.0 alpha:1];
}

+ (instancetype)yellowColor {

    return [UIColor colorWithRed:252 / 255.0 green:180 / 255.0 blue:21 / 255.0 alpha:1];
}

+ (instancetype)greyColor {
   
    return [UIColor colorWithRed:86 / 255.0 green:81 / 255.0 blue:66 / 255.0 alpha:1];
}

+ (instancetype)whiteColor {
  
    return [UIColor colorWithRed:255 / 255.0 green:255 / 255.0 blue:255 / 255.0 alpha:1];
}

// Secondary Colors
+ (instancetype)deepRedColor {

    return [UIColor colorWithRed:173 / 255.0 green:50 / 255.0 blue:28 / 255.0 alpha:1];
}

+ (instancetype)deepBlueColor {

    return [UIColor colorWithRed:5 / 255.0 green:84 / 255.0 blue:140 / 255.0 alpha:1];
}

+ (instancetype)deepGreenColor {
    
    return [UIColor colorWithRed:0 / 255.0 green:95 / 255.0 blue:97 / 255.0 alpha:1];
}

+ (instancetype)offWhiteColor {

    return [UIColor colorWithRed:249 / 255.0 green:247 / 255.0 blue:245 / 255.0 alpha:1];
}

+ (instancetype)lightGreyColor {

    return [UIColor colorWithRed:240 / 255.0 green:237 / 255.0 blue:234 / 255.0 alpha:1];
}

+ (instancetype)mediumGrayColor {

    return [UIColor colorWithRed:221 / 255.0 green:213 / 255.0 blue:199 / 255.0 alpha:1];
}

+ (instancetype)warmGreyColor {

    return [UIColor colorWithRed:195 / 255.0 green:186 / 255.0 blue:153 / 255.0 alpha:1];
}

// Accent Colors
+ (instancetype)burgundyColor {

    return [UIColor colorWithRed:78 / 255.0 green:31 / 255.0 blue:33 / 255.0 alpha:1];
}

+ (instancetype)brightGreenColor {

    return [UIColor colorWithRed:155 / 255.0 green:190 / 255.0 blue:35 / 255.0 alpha:1];
}

+ (instancetype)periwinkleColor {

    return [UIColor colorWithRed:141 / 255.0 green:137 / 255.0 blue:192 / 255.0 alpha:1];
}

// Text Colors
+ (instancetype)textColor {
    
    return [UIColor colorWithRed:86 / 255.0 green:81 / 255.0 blue:66 / 255.0 alpha:1];
}

// Pressed Colors
+ (instancetype)orangePressedColor {

    return [UIColor colorWithRed:241 / 255.0 green:112 / 255.0 blue:19 / 255.0 alpha:1];
}

+ (instancetype)greyPressedColor {

    return [UIColor colorWithRed:118 / 255.0 green:112 / 255.0 blue:97 / 255.0 alpha:1];
}

+ (instancetype)bluePressedColor {

    return [UIColor colorWithRed:38 / 255.0 green:110 / 255.0 blue:157 / 255.0 alpha:1];
}

// CP Level Colors
+ (instancetype)goldEliteBackgroundColor {
   
    return [UIColor colorWithRed:255 / 255.0 green:199 / 255.0 blue:44 / 255.0 alpha:1];
}

+ (instancetype)platinumEliteBackgroundColor {
   
    return [UIColor colorWithRed:209 / 255.0 green:209 / 255.0 blue:209 / 255.0 alpha:1];
}

+ (instancetype)diamondEliteBackgroundColor {
    
    return [UIColor colorWithRed:52 / 255.0 green:52 / 255.0 blue:51 / 255.0 alpha:1];
}

+ (instancetype)diamondEliteFontColor {
   
    return [UIColor colorWithRed:249 / 255.0 green:247 / 255.0 blue:245 / 255.0 alpha:1];
}

+ (instancetype)brownColor {
    
    return [UIColor brownColor];
}

+ (instancetype)navBarTitleTextColor {
    
    return [UIColor whiteColor];
}

+ (instancetype)navBarButtonTextColor {
    
    return [UIColor whiteColor];
}

@end
