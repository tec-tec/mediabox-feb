//
//  RestaurantManager.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 23/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "RestaurantManager.h"

@interface RestaurantManager ()

@property (strong, nonatomic) NSMutableSet *restaurants;

@end

@implementation RestaurantManager

-(NSArray *)allRestaurants {

    return self.restaurants.allObjects;
}

- (void)addRestaurant:(Restaurant *)restaurant {

    [self.restaurants addObject:restaurant];
}
@end
