//
//  OTViewController.m
//  OptionsToolbar
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "OTViewController.h"
#import <MessageUI/MessageUI.h>
#import "OTDismissViewController.h"

@interface OTViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation OTViewController

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

- (IBAction)mailButton:(id)sender {
    MFMailComposeViewController *mailViewController = [MFMailComposeViewController new];
    
    mailViewController.mailComposeDelegate = self;
    
    [mailViewController setSubject:@"You are so cool!"];
    [mailViewController setMessageBody:@"body here" isHTML:NO];
    
    NSArray *sentToEmail = [NSArray arrayWithObject: @"fadewave@gmail.com"];
    [mailViewController setToRecipients:sentToEmail];

    
    [self presentViewController:mailViewController animated:YES completion:nil];
    
    
}


- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    [controller dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)redButton:(id)sender {
    
    self.view.backgroundColor = [UIColor redColor];
    
}

- (IBAction)blueButton:(id)sender {
    
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (IBAction)newButton:(id)sender {
    
    OTDismissViewController *dismissViewController = [OTDismissViewController new];
    
    [self presentViewController:dismissViewController animated:YES completion:nil];
    
}

@end
