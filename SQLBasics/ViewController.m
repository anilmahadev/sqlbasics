//
//  ViewController.m
//  SQLBasics
//
//  Created by Anil Mahadev on 27/01/14.
//  Copyright (c) 2014 Anil Mahadev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end







@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnEmail:(id)sender {
    NSString *recipients = @"mailto:anil_mahadev@icloud.come?,&subject=SQL Basics Feedback!";
    
    NSString *body = @"&body=Dear SQL Basics User, we are delighted that you have chosen to share your vauable feedback with us. Please use this space to send us your thoughts on the app, improvments. We appreciate your time";
    
    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    
    email = [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
