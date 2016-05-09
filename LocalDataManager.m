//
//  LocalDataManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "LocalDataManager.h"
#import "BaseDataManager.h"
#import "LaneVideo.h"


static LocalDataManager *localDataManager;

@implementation LocalDataManager

+ (instancetype)sharedManager {
    
    if (!localDataManager) {
        localDataManager = [[self alloc] init];
    }
    
    return localDataManager;
}

- (void)setVideoSettings:(LaneVideo *)laneVideo {
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:laneVideo];
    [[BaseDataManager sharedManager] setData:data forKey:@"LANE_VIDEO"];
}

- (LaneVideo *)returnVideoSettings {
    
    LaneVideo *laneVideo = (LaneVideo *)[NSKeyedUnarchiver unarchiveObjectWithData:[[BaseDataManager sharedManager] getDataForKey:@"LANE_VIDEO"]];
    return laneVideo;
}


@end
