//
//  ViewController.m
//  MessengerTest
//
//  Created by Mykhaylo Seleznyov on 12/17/15.
//  Copyright © 2015 XCDS International. All rights reserved.
//

#import "COMessTestViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>

@interface COMessTestViewController ()

@end

@implementation COMessTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareAction:(id)sender
{
    UIImage *image = [UIImage imageNamed:@"test_image.png"];
    [FBSDKMessengerSharer shareImage:image withOptions:nil];
}
@end
