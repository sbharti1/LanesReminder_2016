//
//  ViewController.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *btnMap;

@property (weak, nonatomic) IBOutlet UIButton *btnCamera;

@property (weak, nonatomic) IBOutlet UIButton *btnCamCoder;

@property (weak, nonatomic) IBOutlet UIButton *btnMic;

@property (weak, nonatomic) IBOutlet UIButton *btnStorage;

- (IBAction)startAnimation:(id)sender;
- (void)stopAnimation:(UIButton *)btn;

@end

