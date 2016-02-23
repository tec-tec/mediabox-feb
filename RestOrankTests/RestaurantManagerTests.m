//
//  RestaurantManagerTests.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 23/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RestaurantManager.h"
#import "Restaurant.h"

@interface RestaurantManagerTests : XCTestCase

@end

@implementation RestaurantManagerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddRestaurant {

    Restaurant *resto = [[Restaurant alloc] initWithName:@"Resto Test"];
    RestaurantManager *manager = [[RestaurantManager alloc] init];

    [manager addRestaurant:resto];
    NSArray *result = [manager allRestaurants];

    XCTAssertEqual(result.count, 1);
    XCTAssert(resto == result.firstObject);
}

@end
