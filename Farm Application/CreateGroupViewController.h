//
//  CreateGroupViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateGroupViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *barnPicker;
@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsTextField;
@property (weak, nonatomic) IBOutlet UITextField *NotesTextField;
@end
