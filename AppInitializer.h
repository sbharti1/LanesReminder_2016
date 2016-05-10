//
//  AppInitializer.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/9/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

/*
 
 Put all the settings which are required for app initialization at the very begining
 
 */

#import <Foundation/Foundation.h>

@class LaneVideo;
@class LanePhoto;

@interface AppInitializer : NSObject 

+ (instancetype)sharedAppState;
- (void)initialAppSettings;

@end
