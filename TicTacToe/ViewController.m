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
@property NSString *whoWon;

@end

@implementation ViewController


- (IBAction)onButtonTapped:(UIButton *)sender {
    for (UIButton *button in self.buttons) {
        if (button == sender) {
            [button setTitle:self.whichPlayerLabel.text forState:UIControlStateNormal];
            
            if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
                self.whichPlayerLabel.text = @"O";
            } else if ([self.whichPlayerLabel.text isEqualToString:@"O"]){
                self.whichPlayerLabel.text = @"X";
            }
        }
    
    
    if ((self.ButtonOne.titleLabel.text == self.ButtonTwo.titleLabel.text) && (self.ButtonOne.titleLabel.text == self.ButtonThree.titleLabel.text)) {
        self.whoWon = self.ButtonOne.titleLabel.text;
        NSLog(@"We got a winner: %@", self.ButtonOne.titleLabel.text);
        }

    }
    
    /*
    else if (self.ButtonFour.titleLabel == self.ButtonFive.titleLabel == self.ButtonSix.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonSeven.titleLabel == self.ButtonEight.titleLabel == self.ButtonNine.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonOne.titleLabel == self.ButtonFour.titleLabel == self.ButtonSeven.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonTwo.titleLabel == self.ButtonFive.titleLabel == self.ButtonEight.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonThree.titleLabel == self.ButtonSix.titleLabel == self.ButtonNine.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonOne.titleLabel == self.ButtonFive.titleLabel == self.ButtonNine.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }
    else if (self.ButtonThree.titleLabel == self.ButtonFive.titleLabel == self.ButtonSeven.titleLabel) {
        [self.whoWon stringWithFormat:@"%@", self.whichPlayerLabel.text]
    }*/
    
    
    
    
    
    
    
    
//    if (sender == self.ButtonOne) {
//        NSLog(@"yo");
//        [self.ButtonOne.text stringWithFormat:@"%@", self.whichPlayerLabel.text];
//    }
    
    // self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
    
    
    // NSLog(@"%@", self.whichPlayerLabel.text);

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
