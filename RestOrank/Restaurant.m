//
//  Restaurant.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 22/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"";
        _address = @"";
        _comment = @"";
        _grade = 5;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
{
    self = [self init];
    if (self) {
        self.name = name;
    }
    return self;
}

+ (Restaurant *)badRestaurant {

    Restaurant *badResto = [[Restaurant alloc] init];
    badResto.grade = 0;

    return badResto;
}

+ (Restaurant *)goodRestaurant {

    Restaurant *goodResto = [[Restaurant alloc] init];
    goodResto.grade = 10;

    return goodResto;
}

- (NSString *)description {

    return @"Description du resto";
}
@end
