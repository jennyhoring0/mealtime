//
//  Food.h
//  MealTime
//
//  Created by Jennifer Horing on 12/2/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>



@interface Food : NSManagedObject

@property (nonatomic) NSNumber * foodID;
@property (nonatomic, retain) NSString * recipeURL;
@property (nonatomic, retain) NSString * recipeName;
@end

