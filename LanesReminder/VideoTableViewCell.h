//
//  VideoTableViewCell.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/4/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *lblVideoName;
@property (nonatomic, weak) IBOutlet UILabel *lblVideoDuration;
@property (nonatomic, weak) IBOutlet UILabel *lblVideoSize;
@property (nonatomic, weak) IBOutlet UILabel *lblVideoCreated;
@property (nonatomic, weak) IBOutlet UIImageView *imgViewVideoThumnail;

@end
