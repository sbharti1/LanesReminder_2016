//
//  AppInitializer.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/9/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "AppInitializer.h"
#import "AppStateManager.h"
#import "LocalDataManager.h"

#import "LaneVideo.h"
#import "Constants.h"
#import "LanePhoto.h"

static AppInitializer *appInitialzer;

@interface AppInitializer ()

- (void)initializeVideoSettings;
- (void)initializePhotoSettings;

@end

@implementation AppInitializer


#pragma mark - Shared Instance

+ (instancetype)sharedAppState {
    
    if (!appInitialzer) {
        appInitialzer = [[self alloc] init];
    }
    
    return appInitialzer;
}


#pragma mark - Main App Initialization

- (void)initialAppSettings {
    
    [self initializeVideoSettings];
    
    [self initializePhotoSettings];
}


#pragma mark - Initialization Helper

- (void)initializeVideoSettings {
    // initialize Video Settings
    // initial video have duration of 10 Mins and quality of video will be Low
    
    if (![[AppStateManager sharedManager] returnVideoSettings]) {
        
        LaneVideo *laneVideo = [[LaneVideo alloc] init];
        laneVideo.duration = 10;
        laneVideo.quality = 0;
        
        // SAVE LANE VIDEO OBJECT HERE
        [[LocalDataManager sharedManager] setVideoSettings:laneVideo];
    }
}

- (void)initializePhotoSettings {
    
    // initialize Photo Settings
    // initial Photo have duration of 10 Sec and quality of Photo will be Low
    
    if (![[AppStateManager sharedManager] returnPhotoSettings]) {
        
        LanePhoto *lanePhoto = [[LanePhoto alloc] init];
        lanePhoto.duration = 10;
        lanePhoto.quality = 0;
        
        // SAVE LANE VIDEO OBJECT HERE
        [[LocalDataManager sharedManager] setPhotoSettings:lanePhoto];
        
    }
}


@end
