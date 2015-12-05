//
//  ViewController.h
//  MealTime
//
//  Created by Jennifer Horing on 11/30/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController    {
    IBOutlet UIButton *FoodPicture;
}

@property (nonatomic, strong) UISwipeGestureRecognizer *leftSwipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *rightSwipe;
@property (nonatomic, strong) NSArray *foodArray;


- (IBAction)Button:(id)sender;

@end
