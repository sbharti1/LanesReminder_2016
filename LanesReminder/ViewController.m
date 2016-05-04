//
//  ViewController.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonnull, strong) NSArray *buttonsList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.buttonsList = [NSArray arrayWithObjects:self.btnMap,self.btnMic,self.btnCamera,self.btnStorage,self.btnCamCoder, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Utility Methods

- (IBAction)startAnimation:(UIButton *)sender {
    // stop animation, if any
    for (UIButton *btn in self.buttonsList) {
        [self animating:btn withRepeat:NO];
    }
    
    [self animating:sender withRepeat:YES];
}

- (void)stopAnimation:(UIButton *)btn {
    [self animating:btn withRepeat:NO];
}

- (void)animating:(UIButton *)sender withRepeat:(BOOL)repeat {

    [UIView animateWithDuration:0.2f animations:^{
        sender.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    } completion:^(BOOL finished) {
        if (!repeat) return;
        [UIView animateWithDuration:0.2f animations:^{
            sender.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
        } completion:^(BOOL finished) {
            [self animating:sender withRepeat:repeat];
        }];
    }];

}

@end
