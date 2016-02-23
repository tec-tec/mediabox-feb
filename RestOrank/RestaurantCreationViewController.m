//
//  ViewController.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 22/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "RestaurantCreationViewController.h"
#import "Restaurant.h"

@interface RestaurantCreationViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *commentTextField;
@property (weak, nonatomic) IBOutlet UISlider *gradeSlider;
- (IBAction)saveRestaurant:(id)sender;
@end

@implementation RestaurantCreationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveRestaurant:(UIButton *)sender {

    //Golden path ou Early exit
    if (self.nameTextField.text.length == 0) {
        return;
    }

    Restaurant *resto = [[Restaurant alloc] initWithName:self.nameTextField.text];
    resto.address = self.addressTextField.text;
    resto.comment = self.commentTextField.text;
    resto.grade = (int)self.gradeSlider.value;

    [self.manager addRestaurant:resto];

    NSLog(@"%@",[self.manager allRestaurants]);

    [self resetForm];
}

- (void)resetForm {

    self.nameTextField.text = @"";
    self.addressTextField.text = nil;
    self.commentTextField.text = nil;
    [self.gradeSlider setValue:5.0 animated:YES];

    [self.nameTextField becomeFirstResponder];
}

- (RestaurantManager *)manager {

    if (_manager == nil) {
        _manager = [[RestaurantManager alloc] init];
    }

    return _manager;
}
@end
