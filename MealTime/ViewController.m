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
#import "AppDelegate.h"



@interface ViewController ()

// @property to store the food objects to display
@property (nonatomic) NSUInteger i;
@property (nonatomic) NSUInteger currentIndex;

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
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    AppDelegate* del = [[UIApplication sharedApplication] delegate];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Food" inManagedObjectContext: [del managedObjectContext]];
    [fetchRequest setEntity:entity];
    
    NSError *error = nil;
    self.foodArray = [[del managedObjectContext] executeFetchRequest:fetchRequest error:&error];
    
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
        Food* current = [_foodArray objectAtIndex:_i];
        
        [FoodPicture setTitle:nil forState:UIControlStateNormal];
//        [FoodPicture setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [FoodPicture
                     setBackgroundImage: [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", [current.foodID intValue]]]
                     forState:UIControlStateNormal];
        
        // update index and then tell the UI to update (custom function )
        
//        NSUInteger previous = self.i - 1;
//        [_foodArray objectAtIndex:previous];
//        [FoodPicture setBackgroundImage:[UIImage imageNamed:@"Nochs.jpg"] forState:UIControlStateNormal];
        NSLog(@"%lu and count %lu", (unsigned long)self.i, (unsigned long) [_foodArray count]);
        self.currentIndex = self.i;
        self.i = (self.i - 1) % [_foodArray count];
        
    }
    
    if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
        Food* current = [_foodArray objectAtIndex:_i];
        
        [FoodPicture setTitle:nil forState:UIControlStateNormal];
//        [FoodPicture setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [FoodPicture
         setBackgroundImage: [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", [current.foodID intValue]]]
         forState:UIControlStateNormal];
        
        NSLog(@"%lu and count %lu", (unsigned long)self.i, (unsigned long) [_foodArray count]);
        self.currentIndex = self.i;
        self.i = (self.i + 1) % [_foodArray count];
        }
    }

- (IBAction)Button:(id)sender {
    SecondViewController *second = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    second.foodArray = _foodArray;
    second.i = _currentIndex;
    [self presentViewController:second animated:YES completion:NULL];
}


@end
