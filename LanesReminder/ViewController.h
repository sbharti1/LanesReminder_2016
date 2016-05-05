//
//  ViewController.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImagePickerController.h"


@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIButton *btnMap;

@property (weak, nonatomic) IBOutlet UIButton *btnCamera;

@property (weak, nonatomic) IBOutlet UIButton *btnCamCoder;

@property (weak, nonatomic) IBOutlet UIButton *btnMic;

@property (weak, nonatomic) IBOutlet UIButton *btnStorage;

@property (weak, nonatomic) IBOutlet UIView *viewOverlay;

@end

