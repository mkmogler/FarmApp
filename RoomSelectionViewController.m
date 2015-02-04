//
//  RoomSelectionViewController.m
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-01-27.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import "RoomSelectionViewController.h"
#import "RoomCell.h"
#import "Singleton.h"

@interface RoomSelectionViewController ()

@end

@implementation RoomSelectionViewController

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
    Singleton *single = [Singleton singletonData];
    // Do any additional setup after loading the view.
    single.nPigs = false;
    [self setTitle:single.barn];
    [self.updateRoomButton setHidden:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateRoomPressed:(id)sender
{
    if ([self.updateRoomButton.titleLabel.text isEqualToString:@"Update Room"])
        [self performSegueWithIdentifier:@"update" sender:self];
    else if ([self.updateRoomButton.titleLabel.text isEqualToString:@"Create Group"])
        [self performSegueWithIdentifier:@"group" sender:self];
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

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RoomCell *cell = (RoomCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"RoomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell.room setText:[NSString stringWithFormat:@"%d", indexPath.row+1]];
    [cell setBackgroundColor:[UIColor clearColor]];
    if (indexPath.row == 0)
    {
        [cell.status setText:@"Incomplete"];
        [cell.status setTextColor:[UIColor yellowColor]];
    }
    else
    {
        [cell.status setText:@"Complete"];
        [cell.status setTextColor:[UIColor greenColor]];
    }
    [cell.segmentControl setSelectedSegmentIndex:0];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RoomCell *cell = (RoomCell *)[tableView cellForRowAtIndexPath:indexPath];
    [self.roomSelectedLabel setText:[NSString stringWithFormat:@"Room %@",cell.room.text]];
    if (cell.segmentControl.selectedSegmentIndex==0)
    {
        [self.updateRoomButton setTitle:@"Create Group" forState:UIControlStateNormal];
        [self.updateRoomButton setHidden:false];
    }
    else
    {
        [self.updateRoomButton setTitle:@"Update Room" forState:UIControlStateNormal];
        [self.updateRoomButton setHidden:false];
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    Singleton *single = [Singleton singletonData];
    single.room = self.roomSelectedLabel.text;
}

@end
