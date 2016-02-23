//
//  ViewController.m
//  RestOrank
//
//  Created by Ludovic Ollagnier on 22/02/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

#import "ViewController.h"
#import "Restaurant.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *commentTextField;
@property (weak, nonatomic) IBOutlet UISlider *gradeSlider;
- (IBAction)saveRestaurant:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //C'est une méthode
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveRestaurant:(UIButton *)sender {

    Restaurant *resto = [[Restaurant alloc] initWithName:self.nameTextField.text];
    resto.address = self.addressTextField.text;
    resto.comment = self.commentTextField.text;
    resto.grade = (int)self.gradeSlider.value;

    NSLog(@"Resto %@ créé. Adresse : %@, comment : %@, note : %d", resto.name, resto.address, resto.comment, resto.grade);
}
@end
