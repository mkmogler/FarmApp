//
//  InventoryViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InventoryViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *SourcePicker;
@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsInTextField;
@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsOutTextField;
- (IBAction)NPIEnd:(id)sender;
- (IBAction)NPOEnd:(id)sender;


@end
