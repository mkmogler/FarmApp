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


-(IBAction)unwindToGroupSelection:(UIStoryboardSegue *)unwindSegue;
@end
