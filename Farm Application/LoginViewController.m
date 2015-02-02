//
//  LoginViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-23.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
{
    NSArray *_namePickerData;
}
@end

@implementation LoginViewController

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
    _namePickerData = @[@"Chet Mogler", @"Kent Mogler", @"Dwight Mogler", @"Any Hettinga", @"Andres C.", @"Marie F.", @"Alex De Jager", @"Gerald Den Hoed", @"Chad Riebeling", @"Glenda Riebeling", @"Dan Bakker", @"Larry Van Roekel", @"Steve Schemel", @"Jon Alons", @"Joy Alons", @"Dave Griesse", @"Chuck Van Roekel", @"Loren Van Roekel", @"Tim Feuchtenberger", @"Evan Altena", @"Randy Warner", @"Dan Berg", @"Gerald Berg", @"Janae Mogler", @"Lynelle Mogler", @"Drew Mogler"];
    
    // connect data
    self.namePicker.dataSource = self;
    self.namePicker.delegate = self;
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
    return _namePickerData.count;
}

//The data to return for the row and component (colum) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _namePickerData[row];
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
