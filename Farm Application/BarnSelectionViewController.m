//
//  CreateGroupViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "BarnSelectionViewController.h"

@interface CreateGroupViewController ()
{
    NSArray *_barnPickerData;
}
@end

@implementation CreateGroupViewController
@synthesize NumberOfPigsTextField;
@synthesize NotesTextField;

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
    _barnPickerData = @[@"Pig Hill Sow", @"Lactation", @"Pig Hill Boar", @"S&S", @"Alons", @"R. Warner Nursery", @"Larry VR Nursery", @"Gilt Developer", @"PHC-West Finisher 1", @"PHC-West Finisher 2", @"PHC-West Finisher 3", @"PHC-West Finisher 4W", @"PHC-West Finisher 4E", @"PHC-Perry Barn 1W", @"PHC-Perry Barn 1E", @"PHC-Perry Barn 2N", @"PHC-Perry Barn 2S", @"Evan Altena", @"Dave Griese Barn 1", @"Dave Griesse Barn 2", @"Ron Kyper", @"Brian Monen", @"Loren VR-South", @"Loren VR-North", @"C. Van Roekel-West", @"C. Van Roekel-East", @"AFP", @"E&L", @"Mill Pond", @"FBR", @"R. Warner #1 West", @"R. Warner #2 Curtain", @"R. Warner #3 Tunnel", @"Marv Flier", @"Berg", @"Larry VR Finisher"];
    
    // Connect Data
    self.barnPicker.dataSource = self;
    self.barnPicker.delegate = self;
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
    return _barnPickerData.count;
}

//The data to return for the row and component (colum) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _barnPickerData[row];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
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
- (IBAction)NOPEnd:(id)sender {
    [NumberOfPigsTextField resignFirstResponder];
}
- (IBAction)NotesEnd:(id)sender {
    [NotesTextField resignFirstResponder];
}
@end
