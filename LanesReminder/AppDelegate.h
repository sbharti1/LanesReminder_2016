//
//  AppDelegate.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, assign) BOOL model;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

