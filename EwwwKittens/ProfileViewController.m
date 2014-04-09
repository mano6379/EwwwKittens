//
//  ProfileViewController.m
//  EwwwKittens
//
//  Created by Marion Ano on 4/9/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "ProfileViewController.h"


@interface ProfileViewController ()

@end

@implementation ProfileViewController

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
    
    PFUser *user = [PFUser currentUser];
    
    self.profileNameTextField.text = user.username;
    self.profileEmailNameTextField.text = user.email;
    // Do any additional setup after loading the view.
}

//- (void)hudWasHidden:(MBProgressHUD *)hud
//{
//    // Remove HUD from screen when the HUD hides
//    [HUD removeFromSuperview];
//    HUD = nil;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)onAddPhotoButtonPressed:(id)sender
//{
//    //generate a random photo from the internet
//    int width = 270 + arc4random()%100;
//    int height = 270 + arc4random()%100;
//    NSString *urlString = [NSString stringWithFormat:@"http://placekitten.com/%d/%d", width, height];
//    
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    
//    
////        PFFile *file = [PFFile fileWithData:data];
////    [object setObject:file forKey:@"image"];
////    [object setObject:[PFUser currentUser] forKey:@"user"];
////    [object saveInBackground];
//    //upload image
//    
//    PFObject *userPhoto = [PFObject objectWithClassName:@"UserPhoto"];
//               [userPhoto setObject:imageFile forKey:@"imageFile"];
//
//            // Set the access control list to current user for security purposes
//                userPhoto.ACL = [PFACL ACLWithUser:[PFUser currentUser]];
//    
//                PFUser *user = [PFUser currentUser];
//                [userPhoto setObject:user forKey:@"user"];
//    
//                [userPhoto saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//                if (!error) {
//                        [self refresh:nil];
//                    }
//                    else{
//                        // Log details of the failure
//                    NSLog(@"Error: %@ %@", error, [error userInfo]);
//                    }
//                }];
//
//}
//    

    
    
    
    
    
//    UIImage *image;
//    int r = arc4random() % 5;
//    switch (r)
//    {
//        case 0:
//            image = [UIImage imageNamed:@"IMG_2001.JPG"];
//            break;
//        case 1:
//            image = [UIImage imageNamed:@"IMG_2032.JPG"];
//            break;
//        case 2:
//            image = [UIImage imageNamed:@"IMG_2077.JPG"];
//            break;
//        default:
//            break;
//            
//    }
//
//    UIGraphicsBeginImageContext(CGSizeMake(640, 960));
//    [image drawInRect: CGRectMake(0, 0, 640, 960)];
//    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    NSData *imageData = UIImageJPEGRepresentation(smallImage, 0.05f);
//    [self uploadImage:imageData];
//}
//
//- (void)uploadImage:(NSData *)imageData
//{
//    //UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
//    //NSData *imageData = UIImageJPEGRepresentation(smallImage, 0.05f);
//    PFFile *imageFile = [PFFile fileWithName:@"Image.jpg" data:imageData];
//    
//    //HUD creation here (see example for code)
//    
//    // Save PFFile
//    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//        if (!error) {
//            // Hide old HUD, show completed HUD (see example for code)
//            
//            // Create a PFObject around a PFFile and associate it with the current user
//            PFObject *userPhoto = [PFObject objectWithClassName:@"UserPhoto"];
//            [userPhoto setObject:imageFile forKey:@"imageFile"];
//            
//            // Set the access control list to current user for security purposes
//            userPhoto.ACL = [PFACL ACLWithUser:[PFUser currentUser]];
//            
//            PFUser *user = [PFUser currentUser];
//            [userPhoto setObject:user forKey:@"user"];
//            
//            [userPhoto saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//                if (!error) {
//                    [self refresh:nil];
//                }
//                else{
//                    // Log details of the failure
//                    NSLog(@"Error: %@ %@", error, [error userInfo]);
//                }
//            }];
//        }
//        else{
//            [HUD hide:YES];
//            // Log details of the failure
//            NSLog(@"Error: %@ %@", error, [error userInfo]);
//        }
//    } progressBlock:^(int percentDone) {
//        // Update your progress spinner here. percentDone will be between 0 and 100.
//        HUD.progress = (float)percentDone/100;
//    }];
//
//}
//
//



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
