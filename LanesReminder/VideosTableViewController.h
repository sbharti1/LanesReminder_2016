//
//  VideosTableViewController.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/4/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CoreDataManager;
@class Recording;
@class DateManager;


@interface VideosTableViewController : UITableViewController

@property (nonatomic, strong) void(^CompletionHandler)(void);

@end
