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

    UIButton *button = [FBSDKMessengerShareButton rectangularButtonWithStyle:FBSDKMessengerShareButtonStyleBlue];
    button.center = self.view.center;
    [button addTarget:self action:@selector(shareAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
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
