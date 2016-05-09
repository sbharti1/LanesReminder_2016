//
//  AppDelegate.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/2/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//


#import "CHFormattedButton.h"
#import "UIColor+CustomColor.h"


@implementation CHFormattedButton

- (instancetype)init {
    self = [super init];
    if (self) {
        [self formatUI];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
        [self formatUI];
    }
    
    return self;
}

/*Prepares the receiver for service after it has been loaded from an Interface Builder archive, or nib file.
 */
- (void)awakeFromNib {

    [super awakeFromNib];
    [self formatUI];
}

- (void)formatUI {
    self.layer.cornerRadius = 3;
    self.layer.borderColor = [UIColor warmGreyColor].CGColor;
    self.layer.borderWidth = 1.0;
    self.tintColor = [UIColor orangeColor] ;

}

@end
