//
//  BaseDataManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

// ********************************************

// Base data manager is Persistent layer of the application to save data. For instance we are saving the data in NSUserDefaults, but later on we can easily import that data to CoreData, sqlite, xml, plainfile or pList.

// ********************************************


#import <Foundation/Foundation.h>


@interface BaseDataManager : NSObject

// shared manager
+ (instancetype)sharedManager;

// save string value to UserDefaults
- (void)saveStringValue:(NSString *)value forKey:(NSString *)key;
- (NSString *)getStringForKey:(NSString *)key;

// save string value to UserDefaults
- (void)setData:(NSString *)data forKey:(NSString *)key;
- (NSData *)getDataForKey:(NSString *)key;

// save any kind of object to UserDefaults
- (void)saveObject:(id)object forKey:(NSString *)key;
- (id)getObjectForKey:(NSString *)key;

@end
