//
//  LocalDataManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseDataManager;
@class LaneVideo;
@class LanePhoto;


@interface LocalDataManager : NSObject

+ (instancetype)sharedManager;

// Video Settings
- (void)setVideoSettings:(LaneVideo *)laneVideo;
- (LaneVideo *)returnVideoSettings;

// Photo Settings
- (void)setPhotoSettings:(LanePhoto *)lanePhoto;
- (LanePhoto *)returnPhotoSettings;

@end
