//
//  EntryScreenViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
/*
**To Do
 **set up segues
*/

#import "EntryScreenViewController.h"

@interface EntryScreenViewController (){
    NSArray *TransitionImages; //holds the images for each collection view cell
    NSArray *LocationNames;    //holds the names of each modal segue
}

@end

@implementation EntryScreenViewController

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
    //create dictionary for cell information
    NSString *CCIPath = [[NSBundle mainBundle] pathForResource:@"CollectionCellInformation" ofType:@"plist"]; //define path
    NSDictionary *CellInformation = [[NSDictionary alloc] initWithContentsOfFile:CCIPath];//pull from path
    //set in arrays
    TransitionImages = [CellInformation objectForKey:@"Image"];
    LocationNames = [CellInformation objectForKey:@"SendLoc"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // set up a segue for each identifier/cell
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return TransitionImages.count;
}

- (UICollectionViewCell *)collecitonView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *) indexPath{
    static NSString *identifier = @"Cell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    UIImageView *transitionImageView = (UIImageView *)[cell viewWithTag:1];
    transitionImageView.image = [UIImage imageNamed:[TransitionImages objectAtIndex:indexPath.row]];
    return cell;
}
@end
