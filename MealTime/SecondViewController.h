//
//  SecondViewController.h
//  MealTime
//
//  Created by Jennifer Horing on 12/2/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController;
@property (nonatomic, strong) NSArray *foodArray;
@property (nonatomic) NSUInteger i;
- (IBAction)link:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *Name;
- (IBAction)Back:(id)sender;


//@protocol SecondViewController;
//@interface SecondViewController: UIViewController
//@property (nonatomic, assign) id<SecondViewController> delegate;
//@end
//@protocol SecondViewController <NSObject>
//- (void)secondViewController:(SecondViewController *)controller didTappedOnButton:(UIButton *)button;
//@end


@end
