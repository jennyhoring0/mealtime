//
//  Food.h
//  MealTime
//
//  Created by Jennifer Horing on 12/2/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Restaurant;

@interface Food : NSManagedObject

@property (nonatomic, retain) NSString * uniqueString;
@property (nonatomic, retain) NSSet *whoCookedIt;
@end

@interface Food (CoreDataGeneratedAccessors)

- (void)addWhoCookedItObject:(Restaurant *)value;
- (void)removeWhoCookedItObject:(Restaurant *)value;
- (void)addWhoCookedIt:(NSSet *)values;
- (void)removeWhoCookedIt:(NSSet *)values;

@end
