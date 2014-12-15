//
//  GroupSelectionViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-23.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "GroupSelectionViewController.h"

@interface GroupSelectionViewController ()
{
    NSArray *_sourcePickerData;
}
@end

@implementation GroupSelectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize Data
    _sourcePickerData = @[@"Pig Hill(P)", @"Coyote Ridge(C)", @"Jackrabbit Farms(J)", @"Windy Plains(W)", @"Open Market(O)"];
    // Connect Data
    self.sourcePicker.dataSource = self;
    self.sourcePicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of colums of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _sourcePickerData.count;
}

//The data to return for the row and component (colum) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _sourcePickerData[row];
}

-(IBAction)unwindToGroupSelection:(UIStoryboardSegue *)unwindSegue{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
