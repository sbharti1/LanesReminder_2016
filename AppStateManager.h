//
//  AppStateManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LocalDataManager;
@class LaneVideo;
@class LanePhoto;


@interface AppStateManager : NSObject

+ (instancetype)sharedManager;

- (void)setVideoSettings:(LaneVideo *)laneVideo;
- (LaneVideo *)returnVideoSettings;

- (void)setPhotoSettings:(LanePhoto *)lanePhoto;
- (LanePhoto *)returnPhotoSettings;


@end
