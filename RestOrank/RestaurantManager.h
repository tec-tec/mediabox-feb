//
//  RestaurantManager.h
//  RestOrank
//
//  Created by Ludovic Ollagnier on 23/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Restaurant;
@interface RestaurantManager : NSObject

- (void)addRestaurant:(nonnull Restaurant *)restaurant;
- (nonnull NSArray<Restaurant *> *)allRestaurants;

@end
