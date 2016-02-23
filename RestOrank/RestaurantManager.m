//
//  RestaurantManager.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 23/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "RestaurantManager.h"
#import "Restaurant.h"

@interface RestaurantManager ()

@property (strong, nonatomic) NSMutableSet<Restaurant *> *restaurants;

@end

@implementation RestaurantManager

- (instancetype)init
{
    self = [super init];
    if (self) {
//        On va préferer la lazy instanciation (voir méthode -restaurants)
//        _restaurants = [[NSMutableSet alloc] init];
    }
    return self;
}

-(NSArray *)allRestaurants {

    return self.restaurants.allObjects;
}

- (void)addRestaurant:(nonnull Restaurant *)restaurant {

    [self.restaurants addObject:restaurant];
}

- (NSMutableSet<Restaurant *> *)restaurants {

    if (_restaurants == nil) {
        _restaurants = [NSMutableSet set];
    }

    return _restaurants;
}
@end
