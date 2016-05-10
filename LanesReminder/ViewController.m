//
//  ViewController.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "VideosTableViewController.h"
#import "CommonManager.h"
#import <MobileCoreServices/MobileCoreServices.h>


@interface ViewController ()

@property (nonatomic, strong) AppDelegate *appDel;
@property (nonatomic, strong) ImagePickerController *cameraUI;

@end


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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:NO];
    self.navigationController.navigationBarHidden = YES;
}


#pragma mark - Utility Methods

- (void)displayCamera {
    self.appDel.model = YES;

    self.cameraUI = [[ImagePickerController alloc] init];
    self.cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.cameraUI.showsCameraControls = NO;
    
//    self.cameraUI.cameraViewTransform = CGAffineTransformMakeScale(1.0f, 1.0f);
    self.cameraUI.delegate = self;
    
    __weak ViewController *weakRefVC = self;
    self.cameraUI.CompletionHandler = ^(NSInteger tagValue) {
        switch (tagValue) {
            case 0:
                
                break;
            case 1:
                
                break;
            case 2:
            {
                static NSInteger isrecording;
//            #warning: IMPORTANT Change self refernce to week to break retain cycle
                weakRefVC.cameraUI.mediaTypes = [NSArray arrayWithObject:(NSString *)kUTTypeMovie];
                if (isrecording++ %2 == 0) {
                    [weakRefVC.cameraUI startVideoCapture];
                } else {
                    [weakRefVC.cameraUI stopVideoCapture];
                }
            }
                break;
            case 3:
                
                break;
            case 4:
            {
                [weakRefVC.cameraUI dismissViewControllerAnimated:NO completion:nil];
                VideosTableViewController *viewController = (VideosTableViewController *)[CommonManager instantiateViewControllerFromStoryBoard:@"VideosList"];
                viewController.CompletionHandler = ^ {
                    [weakRefVC displayCamera];
                };
                [weakRefVC.navigationController pushViewController:viewController animated:YES];
            }
                break;
        }
    
    };
    
    [self presentViewController:self.cameraUI animated:NO completion:^{}];
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
//    self.imageView.image = chosenImage;
    
    NSString *mType = [info valueForKey:UIImagePickerControllerMediaType];
    if([mType isEqualToString:@"public.movie"])
        NSLog(@" image data = %@",[NSData dataWithContentsOfURL:[info objectForKey:@"UIImagePickerControllerMediaURL"]]);

    //[picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    self.appDel.model=NO;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}


- (BOOL)shouldAutorotate {
    
    return NO;
}


@end
