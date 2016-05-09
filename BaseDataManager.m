//
//  BaseDataManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "BaseDataManager.h"


static BaseDataManager *baseDataManager;


@implementation BaseDataManager


+ (instancetype)sharedManager {
    
    if (!baseDataManager) {
        baseDataManager = [[self alloc] init];
    }
    
    return baseDataManager;
}

- (void)saveStringValue:(NSString *)value forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getStringForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}


// save data value to UserDefaults
- (void)setData:(NSString *)objectToArchive forKey:(NSString *)key {
    
    NSData *data = (NSData *)[self getObjectForKey:key];
    [self saveObject:data forKey:key];
}

- (NSData *)getDataForKey:(NSString *)key {
    
    NSData *archivedData = [[NSUserDefaults standardUserDefaults] objectForKey:key];

    return archivedData;
}

// save any kind of object to UserDefaults
- (void)saveObject:(id)object forKey:(NSString *)key {

    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id)getObjectForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

@end
