//
//  Restaurant.h
//  RestOrank
//
//  Created by Ludovic Ollagnier on 22/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *comment;
@property (nonatomic) int grade;

+ (Restaurant *)goodRestaurant;
+ (Restaurant *)badRestaurant;
- (instancetype)initWithName:(NSString *)name;

- (NSString *)description;

@end
