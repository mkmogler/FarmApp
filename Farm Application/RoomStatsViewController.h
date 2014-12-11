//
//  RoomStatsViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomStatsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *TempHighTextField;
@property (weak, nonatomic) IBOutlet UITextField *TempLowTextField;
@property (weak, nonatomic) IBOutlet UITextField *GallonsConsumedTextField;
@property (weak, nonatomic) IBOutlet UITextField *TempHigh2TextField;
@property (weak, nonatomic) IBOutlet UITextField *TempLow2TextField;
@property (weak, nonatomic) IBOutlet UITextField *GallonsConsumed2TextField;

@end
