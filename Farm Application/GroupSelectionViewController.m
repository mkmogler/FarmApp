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
@synthesize NumberOfPigsTextFeild;
@synthesize NotesTextFeild;
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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (IBAction)NOPDidBegin:(id)sender
{
    [self.miniView setCenter:CGPointMake(160, self.view.bounds.size.height - 360)];
    
}

- (IBAction)NDidBegin:(id)sender
{
    [self.miniView setCenter:CGPointMake(160, self.view.bounds.size.height - 360)];
}

- (IBAction)NOPDidEnd:(id)sender
{
    [NumberOfPigsTextFeild resignFirstResponder];
    printf("DidEnd ");
}

- (IBAction)NDidEnd:(id)sender
{
    [NotesTextFeild resignFirstResponder];
}

- (IBAction)NOPDidEndOnExit:(id)sender
{
    [self.NotesTextFeild becomeFirstResponder];
}

- (IBAction)NDidEndOnExit:(id)sender
{
    
}

- (IBAction)viewTapped:(id)sender
{
    // return mini view to original place
    [self.miniView setCenter:CGPointMake(160, 212)];
    [self.NotesTextFeild resignFirstResponder];
    [self.NumberOfPigsTextFeild resignFirstResponder];
}

- (IBAction)createGroup:(id)sender {
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
