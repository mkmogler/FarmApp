//
//  RoomCell.h
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-02-02.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *room;

@property (weak, nonatomic) IBOutlet UILabel *status;

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

@end
