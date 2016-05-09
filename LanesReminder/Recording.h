//
//  Recording.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/5/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Recording : NSManagedObject

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *duration;
@property (nullable, nonatomic, retain) NSNumber *size;
@property (nullable, nonatomic, retain) NSNumber *isVideo;
@property (nullable, nonatomic, retain) NSNumber *isFavorite;


@property (nullable, nonatomic, retain) NSDate *dateCreated;
@property (nullable, nonatomic, retain) NSDate *dateModified;

@property (nullable, nonatomic, retain) NSData *recordedData;

@end


