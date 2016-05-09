//
//  LanePhoto.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PhotoQuality) {
    
    LOW = 0,
    MEDIUM,
    HIGH
};


@interface LanePhoto : NSObject <NSCoding>

@property NSInteger time;
@property PhotoQuality quality;

@end
