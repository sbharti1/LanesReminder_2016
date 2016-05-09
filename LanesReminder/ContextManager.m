//
//  ContextManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/5/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "ContextManager.h"

static ContextManager *contextManager;


@implementation ContextManager

+ (instancetype)sharedContext {
    if (!contextManager) {
        contextManager = [[self alloc] init];
    }
    
    return contextManager;
}

- (NSManagedObjectContext *)getManagedObjectContext {
    AppDelegate *appDel = [[UIApplication sharedApplication] delegate];
    
    return appDel.managedObjectContext;
}

@end
