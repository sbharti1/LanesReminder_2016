//
//  CommonManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/6/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//


#import "CommonManager.h"

@implementation CommonManager

// send the identifier of the controller in storyboard, it will automatically instantiate the controller and send that back and we need to explicitly convert the object the Class Type

+ (id)instantiateViewControllerFromStoryBoard:(NSString *)viewControllerIdentifier {

    UIStoryboard *currentStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *viewController = [currentStoryBoard instantiateViewControllerWithIdentifier:viewControllerIdentifier];
    
    return viewController;
}

@end
