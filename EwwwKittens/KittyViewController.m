//
//  KittyViewController.m
//  EwwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "KittyViewController.h"
#import "DetailViewController.h"


@interface KittyViewController ()
@end


@implementation KittyViewController

- (void)viewDidLoad
{
    //asking self to show all the "Kitten"
    self.parseClassName = @"Kitten";

    [super viewDidLoad];
}

-(PFTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    PFTableViewCell *cell = [super tableView: tableView cellForRowAtIndexPath:indexPath object:object];
    cell.imageView.file = [object objectForKey:@"image"];
    [cell.imageView loadInBackground];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [self performSegueWithIdentifier:@"displayDetailfromList" sender:cell];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(PFTableViewCell *)sender
{
    // Check that a new transition has been requested to the DetailViewController and prepares for it
    if ([segue.identifier isEqualToString:@"displayDetailfromList"]){
        
        // Capture the object (e.g. exam) the user has selected from the list
//        NSIndexPath *indexPath = [self.myTableView indexPathForSelectedRow];
//        PFObject *object = [self objectAtIndexPath:indexPath];
        
        // Set destination view controller to DetailViewController to avoid the NavigationViewController in the middle (if you have it embedded into a navigation controller, if not ignore that part)
        //UINavigationController *nav = [segue destinationViewController];
        DetailViewController *vc = segue.destinationViewController;
        vc.image = sender.imageView.image;
        //need to pass the image via segue
        //detailViewController.exam = object;
    }
}

@end
