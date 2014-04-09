//
//  KittyViewController.h
//  EwwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import <Parse/Parse.h>

@interface KittyViewController : PFQueryTableViewController
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
