//
//  RoomSelectionViewController.h
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-01-27.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomSelectionViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *roomTable;
}

@property (weak, nonatomic) IBOutlet UITableView *roomTable;


@property (weak, nonatomic) IBOutlet UILabel *roomSelectedLabel;
@property (weak, nonatomic) IBOutlet UIButton *updateRoomButton;

- (IBAction)updateRoomPressed:(id)sender;

@end
