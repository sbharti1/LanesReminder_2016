//
//  LanePhoto.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "LanePhoto.h"

#define TIME @"duration"
#define QUALITY @"quality"


@implementation LanePhoto

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    if (self != nil) {
                
        self.duration = [aDecoder decodeIntegerForKey:TIME];
        self.quality = [aDecoder decodeIntegerForKey:QUALITY];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeInteger:self.duration forKey:TIME];
    [aCoder encodeInteger:self.quality forKey:QUALITY];
}

@end
