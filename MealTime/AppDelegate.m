//
//  AppDelegate.m
//  MealTime
//
//  Created by Jennifer Horing on 11/30/15.
//  Copyright (c) 2015 Jennifer Horing. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSManagedObjectContext *context = [self managedObjectContext];
    NSManagedObject *food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@1 forKey:@"foodID"];
    [food setValue:@"Absurdly Addictive Asparagus" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/4023-absurdly-addictive-asparagus" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@2 forKey:@"foodID"];
    [food setValue:@"Cinnamon Sugar Breakfast Puffs" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/15110-cinnamon-sugar-breakfast-puffs" forKey:@"recipeURL"];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@3 forKey:@"foodID"];
    [food setValue:@"Magical Marvelous Memorable Cookies" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/8595-magical-marvelous-memorable-cookies" forKey:@"recipeURL"];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@4 forKey:@"foodID"];
    [food setValue:@"Eggplant Parmesan" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/431-eggplant-parmesan" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@5 forKey:@"foodID"];
    [food setValue:@"Maple Glazed Pork Shoulder With Cripsy Skin" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/3909-matilda-maple-and-garlic-pork-shoulder-with-crispy-skin" forKey:@"recipeURL"];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@6 forKey:@"foodID"];
    [food setValue:@"Crunchy, Dill Sweet-Corn Salad with Buttermilk Dressing" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/12928-dilled-crunchy-sweet-corn-salad-with-buttermilk-dressing" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@7 forKey:@"foodID"];
    [food setValue:@"Really Good Spaghetti Bolognese" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/26984-nigel-slater-s-really-good-spaghetti-bolognese" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@8 forKey:@"foodID"];
    [food setValue:@"Spicy Shrimp" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/246-spicy-shrimp" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@9 forKey:@"foodID"];
    [food setValue:@"4-Hour Baguette" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/27433-dan-leader-s-4-hour-baguette" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@10 forKey:@"foodID"];
    [food setValue:@"Creamy-Sausage Stuffed Mushrooms" forKey:@"recipeName"];
    [food setValue:@"http://food52.com/recipes/3110-creamy-sausage-stuffed-mushrooms" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    [food setValue:@11 forKey:@"foodID"];
    [food setValue:@"15-Minute Candy-Stuffed Pancakes" forKey:@"recipeName"];
    [food setValue:@"https://spoonuniversity.com/cook/15-minute-candy-stuffed-pancakes/?utm_source=buzzfeed&utm_medium=referral&utm_campaign=content-partnerships" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@12 forKey:@"foodID"];
    [food setValue:@"Gnocchi with Sautéed Mushrooms and Bacon" forKey:@"recipeName"];
    [food setValue:@"http://www.adorefoods.com/toasted-gnocchi-sauteed-mushrooms-crispy-bacon-caramelized-spring-onions/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@13 forKey:@"foodID"];
    [food setValue:@"Chicken Penne with Tomato and Basil" forKey:@"recipeName"];
    [food setValue:@"http://www.dishingdelish.com/one-pot-chicken-penne-tomato-basil/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@14 forKey:@"foodID"];
    [food setValue:@"Chicken Enchiladas" forKey:@"recipeName"];
    [food setValue:@"http://www.recipetineats.com/one-pot-chicken-enchilada-rice-casserole/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    
    [food setValue:@15 forKey:@"foodID"];
    [food setValue:@"Easy Baked Chicken Tenders" forKey:@"recipeName"];
    [food setValue:@"http://www.allergyfreealaska.com/2013/04/15/easy-baked-paleo-chicken-tenders-with-honey-mustard-dipping-sauce/" forKey:@"recipeURL"];
    
    [[self managedObjectContext] save:NULL];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@16 forKey:@"foodID"];
    [food setValue:@"Chicken Marsala" forKey:@"recipeName"];
    [food setValue:@"http://theviewfromgreatisland.com/chicken-thighs-marsala-two/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@17 forKey:@"foodID"];
    [food setValue:@"Coq-Au-Vin" forKey:@"recipeName"];
    [food setValue:@"http://vikalinka.com/2015/02/03/coq-au-vin-the-ultimate-one-pot-dinner/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];

    [food setValue:@18 forKey:@"foodID"];
    [food setValue:@"Kung Pao Chicken" forKey:@"recipeName"];
    [food setValue:@"http://flavormosaic.com/easy-kung-pao-chicken-recipe/" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@19 forKey:@"foodID"];
    [food setValue:@"Lemon Ricotta Cookies with Glaze" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/giada-de-laurentiis/lemon-ricotta-cookies-with-lemon-glaze-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@20 forKey:@"foodID"];
    [food setValue:@"Baby-Back Ribs" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/alton-brown/who-loves-ya-baby-back-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@21 forKey:@"foodID"];
    [food setValue:@"Chips and Guacamole" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@22 forKey:@"foodID"];
    [food setValue:@"Asian Grilled Salmon" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;

    [food setValue:@23 forKey:@"foodID"];
    [food setValue:@"Chicken Pot Pie" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/ina-garten/chicken-pot-pie-recipe.html" forKey:@"recipeURL"];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@24 forKey:@"foodID"];
    [food setValue:@"Kale Salad" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/aarti-sequeira/massaged-kale-salad-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@25 forKey:@"foodID"];
    [food setValue:@"French Toast" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/alton-brown/french-toast-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@26 forKey:@"foodID"];
    [food setValue:@"Shrimp Scampi" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/ina-garten/linguine-with-shrimp-scampi-recipe3.html" forKey:@"recipeURL"];

    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@27 forKey:@"foodID"];
    [food setValue:@"Cauliflower and Tomatoes" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/food-network-kitchens/cauliflower-with-tomatoes-recipe.html" forKey:@"recipeURL"];

    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@28 forKey:@"foodID"];
    [food setValue:@"Sesame Eggplant" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/food-network-kitchens/sesame-eggplant-recipe2.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@29 forKey:@"foodID"];
    [food setValue:@"Potato Skins" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/food-network-kitchens/maple-bacon-potato-skins-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@30 forKey:@"foodID"];
    [food setValue:@"Tabouleh" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/tabouleh-salad-recipe.html" forKey:@"recipeURL"];
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@31 forKey:@"foodID"];
    [food setValue:@"Antipasti Platter" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/giada-de-laurentiis/antipasti-platter-recipe.html" forKey:@"recipeURL"];
    
    
    food =
    [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext: context];
    return YES;
    
    [food setValue:@32 forKey:@"foodID"];
    [food setValue:@"Spring Rolls" forKey:@"recipeName"];
    [food setValue:@"http://www.foodnetwork.com/recipes/mushroom-and-leek-spring-rolls-recipe.html" forKey:@"recipeURL"];




}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "Harvard.MealTime" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"MTModel" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"MealTime.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
