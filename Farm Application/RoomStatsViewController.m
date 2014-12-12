//
//  RoomStatsViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "RoomStatsViewController.h"

@interface RoomStatsViewController ()

@end

@implementation RoomStatsViewController
@synthesize TempHighTextField;
@synthesize TempLowTextField;
@synthesize GallonsConsumedTextField;
@synthesize TempHigh2TextField;
@synthesize TempLow2TextField;
@synthesize GallonsConsumed2TextField;

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)THEnd:(id)sender {
    [TempHighTextField resignFirstResponder];
}

- (IBAction)TLEnd:(id)sender {
    [TempLowTextField resignFirstResponder];
}

- (IBAction)GCend:(id)sender {
    [GallonsConsumedTextField resignFirstResponder];
}

- (IBAction)TH2End:(id)sender {
    [TempHigh2TextField resignFirstResponder];
}

- (IBAction)TL2End:(id)sender {
    [TempLow2TextField resignFirstResponder];
}

- (IBAction)GC2End:(id)sender {
    [GallonsConsumed2TextField resignFirstResponder];
}
@end
