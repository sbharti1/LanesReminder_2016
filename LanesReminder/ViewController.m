//
//  ViewController.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController ()

@property (nonatomic, strong) AppDelegate *appDel;

@end

enum {
    MAPS = 0,
    PHOTO,
    VIDEO,
    MICROPHONE,
    STORAGE
};


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDel = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [self displayCamera];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Utility Methods

- (void)displayCamera {
    self.appDel.model = YES;

    ImagePickerController *cameraUI = [[ImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
    cameraUI.showsCameraControls = NO;
    
    cameraUI.cameraViewTransform = CGAffineTransformMakeScale(1.7f, 1.7f);
    cameraUI.delegate = self;
    
    [self presentViewController:cameraUI animated:NO completion:^{}];
}

- (IBAction)selectPhoto:(UIButton *)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
//    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
////    self.imageView.image = chosenImage;
//    
//    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    self.appDel.model=NO;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}


- (BOOL)shouldAutorotate {
    
    return NO;
}


@end
