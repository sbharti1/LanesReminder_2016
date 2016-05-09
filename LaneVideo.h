//
//  LaneVideo.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef  NS_ENUM(NSInteger, VideoQuality) {
    
    LOW = 0,
    MEDIUM,
    HIGH
};


@interface LaneVideo : NSObject <NSCoding>

@property NSInteger time;
@property VideoQuality quality;

@end
