//
//  ImagePickerController.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/4/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ImagePickerController : UIImagePickerController

@property (nonatomic, strong) void(^CompletionHandler)(NSInteger currentlySelectedButtonTag);


@end
