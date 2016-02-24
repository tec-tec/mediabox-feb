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
#import "UIColor+MoreColors.h"
#import "RestaurantCreationViewController.h"

@interface RestaurantListTableViewController ()

@property (strong, nonatomic) RestaurantManager *manager;

@end

@implementation RestaurantListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor pinkColor];
//    self.view.backgroundColor = [self.view.backgroundColor semiTranslucent];
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
//    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", currentResto.grade];
    cell.detailTextLabel.text = @(currentResto.grade).stringValue;

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"showForm"]) {

        RestaurantCreationViewController *cont = segue.destinationViewController;
        cont.manager = self.manager;
    }

}

- (RestaurantManager *)manager {

    if (_manager == nil) {
        _manager = [[RestaurantManager alloc] init];
        [_manager addRestaurant:[[Restaurant alloc] initWithName:@"McDo"]];
    }

    return _manager;
}

@end
