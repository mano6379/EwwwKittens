//
//  ProfileViewController.h
//  EwwwKittens
//
//  Created by Marion Ano on 4/9/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "MBProgressHUD.h"
#include <stdlib.h>


@interface ProfileViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UIScrollView *photoScrollView;
    NSMutableArray *allImages;
    
    MBProgressHUD *HUD;
    MBProgressHUD *refreshHUD;
}

- (IBAction)refresh:(id)sender;
- (IBAction)cameraButtonTapped:(id)sender;
- (void)uploadImage:(NSData *)imageData;
- (void)setUpImages:(NSArray *)images;
- (void)buttonTouched:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *profileNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *profileEmailNameTextField;

@end
