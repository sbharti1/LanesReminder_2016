//
//  LaneVideo.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "LaneVideo.h"

#define TIME @"time"
#define QUALITY @"quality"


@implementation LaneVideo


- (instancetype)initWithCoder:(NSCoder *)decoder {
    
    self = [super init];
    if (self != nil) {
        
        self.time = [decoder decodeIntegerForKey:TIME];
        self.quality = [decoder decodeIntegerForKey:QUALITY];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeInteger:self.time forKey:TIME];
    [aCoder encodeInteger:self.quality forKey:QUALITY];
}

@end
