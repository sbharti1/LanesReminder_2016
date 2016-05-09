//
//  CoreDataManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/5/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Recording;


@interface CoreDataManager : NSObject

#pragma mark - Singleton obj
+ (instancetype)sharedManager;

#pragma mark - Recording methods

- (void)insertRecording:(Recording *)recording;
- (void)deleteRecording:(Recording *)recording;
- (void)updateRecordingWith:(Recording *)recording;
- (NSArray *)returnListOfRecordings;

@end
