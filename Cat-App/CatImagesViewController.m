//
//  CatImagesViewController.m
//  Cat-App
//
//  Created by Lukas Carvajal on 6/21/15.
//  Copyright (c) 2015 Lukas Carvajal. All rights reserved.
//

#import "CatImagesViewController.h"

@interface CatImagesViewController ()

@property (weak, nonatomic) IBOutlet UITextField *catNameTF;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CatImagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// handle return button for text view to change web view
- (IBAction)returnKeyButton:(id)sender {
    [sender resignFirstResponder];
    
    if ([_catNameTF.text isEqualToString:@"" ] || !_catNameTF) {
        
    }
    else {
        
        // convert url for google image search
        NSString *catURL = [self convertURL:_catNameTF.text];
        
        // change web view to google image search
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL: [NSURL URLWithString:catURL]];
        [_webView loadRequest: request];
    }
    
    
}

// convert cat name to google search url
- (NSString*)convertURL:(NSString*)catName {
    
    // seperate input by spaces and store in array
    NSArray *array = [catName componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    array = [array filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
    
    // beginning of google search url, starts with 'cats named'
    NSString* catURL = @"http://www.google.com/search?q=cats%20named%20";
    
    // add search to google url
    for (int i = 0; i < array.count; i++) {
        catURL = [catURL stringByAppendingString: array[i]];
        catURL = [catURL stringByAppendingString: @"%20"];
    }

    // add final part to google search url
    catURL = [catURL stringByAppendingString: @"&tbm=isch"];
    
    return catURL;
}


@end
