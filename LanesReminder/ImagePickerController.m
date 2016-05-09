//
//  ImagePickerController.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/4/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "ImagePickerController.h"
#import "CommonManager.h"


const float BUTTON_HEIGHT = 50.0f;
const float BUTTON_WIDTH = 50.0f;
const float INITIAL_X_AXIS = 10.0f;

// this constant will keep track of number of buttons on left pane on screen
const NSInteger NUMBER_OF_BUTTONS = 5;

// This will keep track of paddings spaces, like for 5 buttons there would be 6 padding spaces
const NSInteger NUMBER_OF_PADDINGS = 6;

enum {
    MAP = 0,
    PHOTO,
    VIDEO,
    MICROPHONE,
    STORAGE
};

@interface ImagePickerController ()

@end


@implementation ImagePickerController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {

    self.cameraOverlayView = [self overlayView];

}

- (UIView *)overlayView {
    
    UIView *layoutView = [[UIView alloc] initWithFrame:self.view.frame];
    
    float xAxis = self.view.frame.size.width / NUMBER_OF_BUTTONS;
    float padding = xAxis / NUMBER_OF_PADDINGS;
    float value = 0.0f;
    
    for (NSInteger index = 0; index < 5; index++) {
        
        // manage xAxis
        value = index * xAxis + padding;
        
        //create new button
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(value, INITIAL_X_AXIS, BUTTON_WIDTH, BUTTON_HEIGHT)];
        [btn setBackgroundColor:[UIColor clearColor]];
        btn.tag = index;
        btn.backgroundColor = [UIColor groupTableViewBackgroundColor];
        btn.alpha = 0.8f;
        
        //set action
        [btn addTarget:self action:@selector(currentIndex:) forControlEvents:UIControlEventTouchUpInside];
        
        // set button image
        [self setButtonImage:btn];

        // add button to subview
        [layoutView addSubview:btn];
    }
    
    return layoutView;
}

- (void)setButtonImage:(UIButton *)button {
    NSString *imageName = nil;
    NSString *highlightedImageName = nil;
    switch (button.tag) {
        case MAP:
            imageName = @"MapD";
            highlightedImageName = @"MapDHigh";
            break;
        case PHOTO:
            imageName = @"Camera";
            highlightedImageName = @"CameraHigh";
            break;
        case VIDEO:
            imageName = @"CamCoder";
            highlightedImageName = @"CamCoderHigh";
            break;
        case MICROPHONE:
            imageName = @"Mic";
            highlightedImageName = @"MicHigh";
            break;
        case STORAGE:
            imageName = @"Storage";
            highlightedImageName = @"StorageHigh";
            break;
    }
    
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
}

- (void)currentIndex:(UIButton *)pressedButton {
    
    NSLog(@"Tag = %ld",(long)pressedButton.tag);
    if (self.CompletionHandler) {
        self.CompletionHandler(pressedButton.tag);
    }
    [self startAnimatingWithControl:pressedButton];
   
}

- (void)startAnimatingWithControl:(UIView *)control {
    
    [UIView animateWithDuration:0.3f animations:^{
        control.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.3f animations:^{
            control.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.1f animations:^{
                control.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
            }];
        }];
    }];
}


#pragma mark - Segue Methods

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
     
 }


@end
