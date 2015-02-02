//
//  GroupSelectionViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-23.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupSelectionViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *sourcePicker;
@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsTextFeild;
@property (weak, nonatomic) IBOutlet UITextField *NotesTextFeild;
@property (weak, nonatomic) IBOutlet UIControl *miniView;

@property (weak, nonatomic) IBOutlet UILabel *room;


- (IBAction)NOPDidBegin:(id)sender;
- (IBAction)NDidBegin:(id)sender;

- (IBAction)NOPDidEnd:(id)sender;
- (IBAction)NDidEnd:(id)sender;

- (IBAction)NOPDidEndOnExit:(id)sender;
- (IBAction)NDidEndOnExit:(id)sender;

- (IBAction)viewTapped:(id)sender;

- (IBAction)createGroup:(id)sender;


@end
