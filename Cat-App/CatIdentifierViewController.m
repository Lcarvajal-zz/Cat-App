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
    
    if (!_cats) {
        _cats = [[NSArray alloc] initWithObjects:@"persian", @"siamese", @"bengal",
                 @"scottish fold", @"munchkin cat", @"exotic shorthair",
                 @"maine coon", @"ragdoll", @"himalayan", nil];
        
        UIImage *image = [UIImage imageNamed: @"persian"];
        [_catPicture setImage:image];
    }
    
    // connect data
    self.catTypes.dataSource = self;
    self.catTypes.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// handle return button for textview in order to identify cat
- (IBAction)returnKeyButton:(id)sender {
    [self resignFirstResponder];
}

- (long)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;   // one component
}

- (long)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _cats.count; // number of cats for picker view
}

- (NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _cats[row];  // set cat names for picker view
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    // change image based on cat selected
    if(row == 0) {
        // persian
        UIImage *image = [UIImage imageNamed: @"persian"];
        [_catPicture setImage:image];
    }
    else if (row == 1) {
        // siamese
        UIImage *image = [UIImage imageNamed: @"siamese"];
        [_catPicture setImage:image];
    }
    else if (row == 2) {
        // bengal
        UIImage *image = [UIImage imageNamed: @"bengal"];
        [_catPicture setImage:image];
    }
    else if (row == 3) {
        // scottish fold
        UIImage *image = [UIImage imageNamed: @"scottish"];
        [_catPicture setImage:image];
    }
    else if (row == 4) {
        // munchkin cat
        UIImage *image = [UIImage imageNamed: @"munchkin"];
        [_catPicture setImage:image];
    }
    else if (row == 5) {
        // exotic shorthair
        UIImage *image = [UIImage imageNamed: @"exotic"];
        [_catPicture setImage:image];
    }
    else if (row == 6) {
        // maine coon
        UIImage *image = [UIImage imageNamed: @"coon"];
        [_catPicture setImage:image];
    }
    else if (row == 7) {
        // ragdoll
        UIImage *image = [UIImage imageNamed: @"ragdoll"];
        [_catPicture setImage:image];
    }
    else if (row == 8) {
        // himalayan
        UIImage *image = [UIImage imageNamed: @"himalayan"];
        [_catPicture setImage:image];
    }
}

@end
