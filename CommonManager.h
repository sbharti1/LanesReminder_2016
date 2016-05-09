//
//  CommonManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/6/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// ********************************************

// Common data manager will have all the methods which will be common to application

// ********************************************

@interface CommonManager : NSObject

+ (id)instantiateViewControllerFromStoryBoard:(NSString *)viewControllerIdentifier;

@end
