//
//  LanePhoto.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PhotoQuality) {
    
    PHOTO_QUALITY_LOW = 0,
    PHOTO_QUALITY_MEDIUM,
    PHOTO_QUALITY_HIGH
};


@interface LanePhoto : NSObject <NSCoding>

@property NSInteger duration;
@property PhotoQuality quality;

@end
