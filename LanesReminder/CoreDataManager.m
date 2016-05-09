//
//  CoreDataManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/5/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "CoreDataManager.h"
#import "Recording.h"
#import "ContextManager.h"


static CoreDataManager *manager;

@interface CoreDataManager()

@property (nonatomic, strong) AppDelegate *appDel;
@end


@implementation CoreDataManager

+ (instancetype)sharedManager {
    
    if (!manager) {
        manager = [[self alloc] init];
    }
    
    return manager;
}

- (void)insertRecording:(Recording *)recording {
    
    NSError *error = nil;
    if ([[[ContextManager sharedContext] getManagedObjectContext] save:&error] == NO) {
        NSLog(@"There is error in saving your data = %@",[error description]);
    }
}

- (void)deleteRecording:(Recording *)recording {
    
}

- (void)updateRecordingWith:(Recording *)recording {
   }

- (NSArray *)returnListOfRecordings {
        
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Recording"];
    
    NSError *error = nil;
    NSArray *results = [[[ContextManager sharedContext] getManagedObjectContext] executeFetchRequest:request error:&error];
    if (!results) {
        NSLog(@"Error fetching Employee objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
   
    return results;
}

@end
