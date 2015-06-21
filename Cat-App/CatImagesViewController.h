//
//  CatImagesViewController.h
//  Cat-App
//
//  Created by Lukas Carvajal on 6/21/15.
//  Copyright (c) 2015 Lukas Carvajal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CatImagesViewController : UIViewController

- (IBAction)returnKeyButton : (id) sender;

- (NSString*)convertURL:(NSString*)catName;

@end

