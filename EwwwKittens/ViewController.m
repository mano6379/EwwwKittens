//
//  ViewController.m
//  EwwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //turn on anonymous user
    [PFUser enableAutomaticUser];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (IBAction)onAddButtonPressed:(id)sender
{
    //generate a random photo from the internet
    int width = 270 + arc4random()%100;
    int height = 270 + arc4random()%100;
    NSString *urlString = [NSString stringWithFormat:@"http://placekitten.com/%d/%d", width, height];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    //creates a PFObject withClassName, "Kitten"
    PFObject *object = [PFObject objectWithClassName:@"Kitten"];
    
    PFFile *file = [PFFile fileWithData:data];
    [object setObject:file forKey:@"image"];
    [object setObject:[PFUser currentUser] forKey:@"user"];
    [object saveInBackground];

}





@end
