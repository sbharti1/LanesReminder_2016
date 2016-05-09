//
//  ContextManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/5/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"


@interface ContextManager : NSObject

+ (instancetype)sharedContext;

// return current managed object context which is allocated in appdelegated
- (NSManagedObjectContext *)getManagedObjectContext;

@end
