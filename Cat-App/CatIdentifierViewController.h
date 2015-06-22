//
//  CatIdentifierViewController.h
//  Cat-App
//
//  Created by Lukas Carvajal on 6/21/15.
//  Copyright (c) 2015 Lukas Carvajal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CatIdentifierViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>


@property (weak, nonatomic) IBOutlet UIPickerView *catTypes;
@property (weak, nonatomic) IBOutlet UIImageView *catPicture;


@property NSArray *cats;

@end

