//
//  AppStateManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "AppStateManager.h"
#import "LocalDataManager.h"
#import "LaneVideo.h"



static AppStateManager *appDataManager;

@implementation AppStateManager

+ (instancetype)sharedManager {
    
    if (!appDataManager) {
        appDataManager = [[self alloc] init];
    }
    
    return appDataManager;
}


- (void)setVideoSettings:(LaneVideo *)laneVideo {
    
    [[LocalDataManager sharedManager] setVideoSettings:laneVideo];
}

- (LaneVideo *)returnVideoSettings {
    
    return [[LocalDataManager sharedManager] returnVideoSettings];
}

@end
