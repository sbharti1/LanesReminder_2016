//
//  LocalDataManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/8/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "LocalDataManager.h"
#import "BaseDataManager.h"


static LocalDataManager *localDataManager;

@implementation LocalDataManager

+ (instancetype)sharedManager {
    
    if (!localDataManager) {
        localDataManager = [[self alloc] init];
    }
    
    return localDataManager;
}



@end
