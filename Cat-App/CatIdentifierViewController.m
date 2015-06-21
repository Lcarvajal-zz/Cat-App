//
//  CatIdentifierViewController.m
//  Cat-App
//
//  Created by Lukas Carvajal on 6/21/15.
//  Copyright (c) 2015 Lukas Carvajal. All rights reserved.
//

#import "CatIdentifierViewController.h"

@interface CatIdentifierViewController ()

@end

@implementation CatIdentifierViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// handle return button for textview in order to identify cat
- (IBAction)returnKeyButton:(id)sender {
    [self resignFirstResponder];
}

@end
