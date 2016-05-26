//
//  ViewController.m
//  TicTacToe
//
//  Created by Christopher Benavides on 5/26/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *ButtonOne;
@property (weak, nonatomic) IBOutlet UIButton *ButtonTwo;
@property (weak, nonatomic) IBOutlet UIButton *ButtonThree;
@property (weak, nonatomic) IBOutlet UIButton *ButtonFour;
@property (weak, nonatomic) IBOutlet UIButton *ButtonFive;
@property (weak, nonatomic) IBOutlet UIButton *ButtonSix;
@property (weak, nonatomic) IBOutlet UIButton *ButtonSeven;
@property (weak, nonatomic) IBOutlet UIButton *ButtonEight;
@property (weak, nonatomic) IBOutlet UIButton *ButtonNine;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController


- (IBAction)onButtonTapped:(UIButton *)sender {
    for (UIButton *button in self.buttons) {
        if (button == sender) {
            [button setTitle:self.whichPlayerLabel.text forState:UIControlStateNormal];
        }
    }
    
//    if (sender == self.ButtonOne) {
//        NSLog(@"yo");
//        [self.ButtonOne.text stringWithFormat:@"%@", self.whichPlayerLabel.text];
//    }
    
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
    
    if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
        self.whichPlayerLabel.text = @"O";
    } else if ([self.whichPlayerLabel.text isEqualToString:@"O"]){
        self.whichPlayerLabel.text = @"X";
    }
    NSLog(@"%@", self.whichPlayerLabel.text);
    
    




}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"X";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
