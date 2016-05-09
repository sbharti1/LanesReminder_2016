//
//  TestingManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/6/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "TestingManager.h"
#import "ContextManager.h"
#import "DateManager.h"

//models
#import "Recording.h"

@interface TestingManager()

+ (NSData *)testImageDataFromLocalFile;

@end

@implementation TestingManager

+ (NSData *)testImageDataFromLocalFile {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"imageData" ofType:@"txt"];
    NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSData *base64Data = [[NSData alloc] initWithBase64EncodedString:content options:0];

    return base64Data;
}


// complete test recording object

+ (Recording *)testRecordingObject {
    
    Recording *recording = (Recording *)[NSEntityDescription insertNewObjectForEntityForName:@"Recording" inManagedObjectContext:[[ContextManager sharedContext] getManagedObjectContext]];
    
    recording.name = @"Test Recording";
    
    recording.duration = @"5.0f";
    
    recording.size = [NSNumber numberWithFloat:1.4];
    
    recording.isVideo = [NSNumber numberWithBool:NO];
    
    recording.isFavorite = [NSNumber numberWithBool:NO];
    
    recording.dateCreated = [NSDate date];
    
    recording.dateModified = [NSDate date];
    
    recording.recordedData = [self testImageDataFromLocalFile];
    
    return recording;
}

@end
