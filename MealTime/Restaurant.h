//
//  Restaurant.h
//  MealTime
//
//  Created by Jennifer Horing on 12/2/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Food;

@interface Restaurant : NSManagedObject

@property (nonatomic, retain) NSString * restaurantName;
@property (nonatomic, retain) NSString * restaurantURL;
@property (nonatomic, retain) NSNumber * uniqueid;
@property (nonatomic, retain) NSSet *meals;
@end

@interface Restaurant (CoreDataGeneratedAccessors)

- (void)addMealsObject:(Food *)value;
- (void)removeMealsObject:(Food *)value;
- (void)addMeals:(NSSet *)values;
- (void)removeMeals:(NSSet *)values;

@end
