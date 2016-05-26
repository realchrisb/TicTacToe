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

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController


- (IBAction)onButtonTapped:(UIButton *)sender {
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
    
    if ((self.whichPlayerLabel.text = @"X")) {
        self.whichPlayerLabel.text = @"Y";
    } else {
        self.whichPlayerLabel.text = @"X";
    }
    
    




}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
