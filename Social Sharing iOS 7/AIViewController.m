//
//  AIViewController.m
//  Social Sharing iOS 7
//
//  Created by Ali Karagoz on 21/10/2013.
//  Copyright (c) 2013 Ali Karagoz. All rights reserved.
//

#import <Social/Social.h>
#import "AIViewController.h"

@interface AIViewController ()
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation AIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Share Button
- (IBAction)didTouchShareButton:(id)sender {
    
    SLComposeViewController *twitterComposeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    // Shortened URL
    NSURL *url = [NSURL URLWithString:@"http://goo.gl/WUZbfW"];
    
    // Adding the URL
    [twitterComposeController addURL:url];
    
    // Adding the dummy text
    [twitterComposeController setInitialText:@"Hello World"];
    
    [self presentViewController:twitterComposeController animated:YES completion:nil];
    
}



@end
