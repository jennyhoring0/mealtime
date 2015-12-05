//
//  SecondViewController.m
//  MealTime
//
//  Created by Jennifer Horing on 12/2/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"
#import "Food.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

-(IBAction)Back:(id)sender {
    ViewController *first = [[ViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:first animated:YES completion:NULL];
}

//-(IBAction)buttonTapped:(UIButton)sender
//{
    
//}

@synthesize foodArray;
@synthesize i;

-(IBAction)link:(id)sender  {
    Food* current = [foodArray objectAtIndex:i];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:current.recipeURL]];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Food* current = [foodArray objectAtIndex:i];
    NSLog(@"%lu and count %lu", (unsigned long)i, (unsigned long) [foodArray count]);
    [self.Name setTitle:current.recipeName forState:UIControlStateNormal];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
