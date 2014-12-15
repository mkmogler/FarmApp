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
- (IBAction)NOPDidEnd:(id)sender;
- (IBAction)NDidEnd:(id)sender;
-(IBAction)unwindToGroupSelection:(UIStoryboardSegue *)unwindSegue;
@end
