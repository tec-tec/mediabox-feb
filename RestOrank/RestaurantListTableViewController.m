//
//  RestaurantListTableViewController.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 23/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "RestaurantListTableViewController.h"
#import "RestaurantManager.h"
#import "Restaurant.h"

@interface RestaurantListTableViewController ()

@property (strong, nonatomic) RestaurantManager *manager;

@end

@implementation RestaurantListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[self.manager allRestaurants] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RestoCell" forIndexPath:indexPath];
    
    // Configure the cell...
    Restaurant *currentResto = self.manager.allRestaurants[indexPath.row];
    cell.textLabel.text = currentResto.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", currentResto.grade];

    return cell;
}

- (RestaurantManager *)manager {

    if (_manager == nil) {
        _manager = [[RestaurantManager alloc] init];
        [_manager addRestaurant:[[Restaurant alloc] initWithName:@"McDo"]];
    }

    return _manager;
}

@end
