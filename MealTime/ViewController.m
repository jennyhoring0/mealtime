//
//  ViewController.m
//  MealTime
//
//  Created by Jennifer Horing on 11/30/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"
#import "SecondViewController.h"



@interface ViewController ()

// @property to store the food objects to display
@property (nonatomic) NSUInteger i;

@end

@implementation ViewController

- (void)viewDidLoad {

    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handlesSwipe:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handlesSwipe:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    
    // from the food model, get all food instances
    // [Food ...]
    // now you have an array, swipe gives you an index into this array
    // self.foodArray
    //NSManagedObjectContext *context = aDocument.managedObjectContext;
//    NSManagedObjectContext *context;
//    NSManagedObject *food =
//        [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
//    [food setValue:@"Tasty" forKey:@"uniqueString"];
//    [self.foodArray addObject:food];
    
    NSUInteger count = [_foodArray count];
    NSUInteger r = arc4random_uniform(1000);
    self.i = r%count;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// custom method: look at the index and reload the photo

-(void)handlesSwipe: (UISwipeGestureRecognizer *) sender {
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
        
        [FoodPicture setTitle:@"Nochs" forState:UIControlStateNormal];
        [FoodPicture setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [FoodPicture setBackgroundImage:[UIImage imageNamed:@"Nochs.jpg"] forState:UIControlStateNormal];
        // update index and then tell the UI to update (custom function )
        
        NSUInteger previous = self.i - 1;
        [_foodArray objectAtIndex:previous];
        [FoodPicture setBackgroundImage:[UIImage imageNamed:@"%@"] forState:UIControlStateNormal];
        self.i = self.i - 1;
    }
    
    if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
        [FoodPicture setTitle:@"Tasty" forState:UIControlStateNormal];
        [FoodPicture setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [FoodPicture setBackgroundImage:[UIImage imageNamed:@"Tasty.jpg"] forState:UIControlStateNormal];
        
        NSUInteger next = self.i + 1;
        [FoodPicture setBackgroundImage:[UIImage imageNamed:@"%@", [_foodArray objectAtIndex:next]] forState:UIControlStateNormal];
        self.i = self.i + 1;
    }
}

- (IBAction)Button {
    SecondViewController *second = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:second animated:YES completion:NULL];
}


@end
