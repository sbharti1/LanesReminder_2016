//
//  LaneVideo.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef  NS_ENUM(NSInteger, VideoQuality) {
    
    VIDEO_QUALITY_LOW = 0,
    VIDEO_QUALITY_MEDIUM,
    VIDEO_QUALITY_HIGH
};


@interface LaneVideo : NSObject <NSCoding>

@property NSInteger duration;
@property VideoQuality quality;

@end
