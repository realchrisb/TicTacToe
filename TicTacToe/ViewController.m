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
@property BOOL victoryConditionMet;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
//@property NSMutableString *whoWon;
@property NSMutableString *victoryTeam;
@property BOOL tieConditionMet;

@end

@implementation ViewController


- (IBAction)onButtonTapped:(UIButton *)sender {

    //sets the whichPlayerLabel, to switch whose turn it is
    for (UIButton *button in self.buttons) {
        if (button == sender) {
            [button setTitle:[NSString stringWithFormat:@"%@", self.whichPlayerLabel.text] forState:UIControlStateNormal];
            //disables buttons

            //NSLog(@"Which Player Label: %@, Button Label: %@", self.whichPlayerLabel.text, button.titleLabel.text);
            
            if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
                self.whichPlayerLabel.text = @"O";
            } else if ([self.whichPlayerLabel.text isEqualToString:@"O"]){
                self.whichPlayerLabel.text = @"X";
            }
        }
    }
    sender.enabled = false;

     //NSLog(@"onButtonTapped, before if statement| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
    self.victoryConditionMet = false;
    //self.victoryTeam = nil;
//    NSLog(@"Button One: %@, Button Two: %@, Button Three: %@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text);
    
    //check for win conditions
    if (self.victoryConditionMet) {
        [self resetBoard];
    }
    
    if ((self.ButtonOne.titleLabel.text == self.ButtonTwo.titleLabel.text) && (self.ButtonOne.titleLabel.text == self.ButtonThree.titleLabel.text) && ![self.ButtonOne.titleLabel.text isEqualToString:@""]) {
        //[self.whoWon appendFormat:@"%@", self.ButtonOne.titleLabel.text];
        //NSLog(@"We got a winner: %@", self.ButtonOne.titleLabel.text);
        //NSLog(@"victoryTeam: %@", self.victoryTeam);
//         NSLog(@"inside if statement for 123| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
        if (([self.ButtonOne.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonOne.titleLabel.text isEqualToString:@"O"])) {
        //if (![self.whoWon  isEqual: @""]) {
        [self.victoryTeam appendFormat:@"%@", self.ButtonOne.titleLabel.text];
            //NSLog(@"victory team is set, inside if statement| b1 %@, b2 %@, b3 %@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text);
        self.victoryConditionMet = true;
            [self buttonsAllGo];
            }
        }
    else if ((self.ButtonFour.titleLabel.text == self.ButtonFive.titleLabel.text) && (self.ButtonFour.titleLabel.text == self.ButtonSix.titleLabel.text) && ![self.ButtonFour.titleLabel.text isEqualToString:@""]) {
        //self.whoWon = self.ButtonFour.titleLabel.text;
        if (([self.ButtonFour.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonFive.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonFour.titleLabel.text];
            //if (![self.whoWon  isEqual: @""]) {
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 456| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);


            }
        }
    else if ((self.ButtonSeven.titleLabel.text == self.ButtonEight.titleLabel.text) && (self.ButtonSeven.titleLabel.text == self.ButtonNine.titleLabel.text) && ![self.ButtonNine.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonSeven.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonSeven.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonSeven.titleLabel.text];
            //if (![self.whoWon  isEqual: @""]) {
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 789| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

            }
        }
    else if ((self.ButtonOne.titleLabel.text == self.ButtonFour.titleLabel.text) && (self.ButtonOne.titleLabel.text == self.ButtonSeven.titleLabel.text) && ![self.ButtonOne.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonSeven.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonSeven.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonSeven.titleLabel.text];
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 147| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

            }
        }
    else if ((self.ButtonTwo.titleLabel.text == self.ButtonFive.titleLabel.text) && (self.ButtonTwo.titleLabel.text == self.ButtonEight.titleLabel.text) && ![self.ButtonTwo.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonTwo.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonTwo.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonFive.titleLabel.text];
            self.victoryConditionMet = true;
            [self buttonsAllGo];
            
//            NSLog(@"inside if statement for 258| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

            }
        }
    else if ((self.ButtonThree.titleLabel.text == self.ButtonSix.titleLabel.text) && (self.ButtonThree.titleLabel.text == self.ButtonNine.titleLabel.text) && ![self.ButtonThree.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonThree.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonThree.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonSix.titleLabel.text];
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 369| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

            }
        }
    else if ((self.ButtonOne.titleLabel.text == self.ButtonFive.titleLabel.text) && (self.ButtonOne.titleLabel.text == self.ButtonNine.titleLabel.text) && ![self.ButtonOne.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonOne.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonOne.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonSix.titleLabel.text];
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 159| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

            }
        }
    else if ((self.ButtonThree.titleLabel.text == self.ButtonFive.titleLabel.text) && (self.ButtonThree.titleLabel.text == self.ButtonSeven.titleLabel.text) && ![self.ButtonThree.titleLabel.text isEqualToString:@""]) {
        if (([self.ButtonThree.titleLabel.text isEqualToString:@"X"])  || ([self.ButtonThree.titleLabel.text isEqualToString:@"O"])) {
            [self.victoryTeam appendFormat:@"%@", self.ButtonSix.titleLabel.text];
            self.victoryConditionMet = true;
            [self buttonsAllGo];
//            NSLog(@"inside if statement for 357| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
            }
    } else if (![self.ButtonOne.titleLabel.text isEqualToString:@""] && ![self.ButtonTwo.titleLabel.text isEqualToString:@""] && ![self.ButtonThree.titleLabel.text isEqualToString:@""] && ![self.ButtonFour.titleLabel.text isEqualToString:@""] && ![self.ButtonFive.titleLabel.text isEqualToString:@""] && ![self.ButtonSix.titleLabel.text isEqualToString:@""] && ![self.ButtonSeven.titleLabel.text isEqualToString:@""] && ![self.ButtonEight.titleLabel.text isEqualToString:@""] && ![self.ButtonNine.titleLabel.text isEqualToString:@""]) {
        self.tieConditionMet = true;
        [self buttonsAllGo];
//        NSLog(@"inside if statement for tie| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

    }

    if (self.victoryConditionMet) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:@"%@ is the winner!", self.victoryTeam]
                                                                       message:@"Great work out there"
                                                            preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *againButton = [UIAlertAction actionWithTitle:@"Another!"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * _Nonnull action) {
                                                                 self.victoryConditionMet = false;
                                                                 //NSLog(self.victoryConditionMet ? @"yes" : @"no");
                                                                 //NSLog(@"again clicked, inside handler for alertcontroller| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
                                                                 [self resetBoard];
                                                                 [self resetBoard];
                                                                 //NSLog(@"post-resetboard, inside handler for alertcontroller| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);


                                                                 //self.victoryTeam = nil;

                                                                 //self.whoWon = nil;

                                                                 //NSLog(@"huh")
                                                                    //[button setTitle:@"" forState:UIControlStateNormal];
                                                             }];
    
        [alert addAction:againButton];
    
        [self presentViewController:alert animated:YES completion:nil];
        self.victoryConditionMet = false;
        
        //NSLog(@"alertcontroller toggled, not clicked| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
        //[self.buttons makeObjectsPerformSelector:@selector(stringWithFormat:) forKey:@" "];
    }
    if (self.tieConditionMet) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Tie Game!"
                                                                       message:@"Truly an even match."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *againButton = [UIAlertAction actionWithTitle:@"Another!"
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                self.tieConditionMet = false;
                                                                [self resetBoard];
                                                                [self resetBoard];
                                                            }];
        
        [alert addAction:againButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        
        self.tieConditionMet = false;
        
    }


    

    
    //I could program a specific ai response for every move.
    //or I could make the ai move randomly.
    //ai moves random at first, then depending on whats on the board, it reacts to that.
    
//    if (sender == self.ButtonOne) {
//        NSLog(@"yo");
//        [self.ButtonOne.text stringWithFormat:@"%@", self.whichPlayerLabel.text];
//    }
    
    // self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
    
    
    // NSLog(@"%@", self.whichPlayerLabel.text);

}

-(void)resetBoard{
    self.ButtonOne.titleLabel.text = @"";
    self.ButtonTwo.titleLabel.text = @"";
    self.ButtonThree.titleLabel.text = @"";
    self.ButtonFour.titleLabel.text = @"";
    self.ButtonFive.titleLabel.text = @"";
    self.ButtonSix.titleLabel.text = @"";
    self.ButtonSeven.titleLabel.text = @"";
    self.ButtonEight.titleLabel.text = @"";
    self.ButtonNine.titleLabel.text = @"";

    //self.whoWon = @"";
    self.victoryConditionMet = false;
    [self.victoryTeam setString:@""];
    //NSLog(@"inside resetBoard, titleLabel.text = string literal | 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
    
    [self.ButtonOne setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonTwo setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonThree setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonFour setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonFive setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonSix setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonSeven setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonEight setTitle:@"" forState:UIControlStateNormal];
    [self.ButtonNine setTitle:@"" forState:UIControlStateNormal];
    //NSLog(@"inside resetBoard, setTitle| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

    


    
//    if (self.ButtonOne.enabled == false) {
//        self.ButtonOne.enabled = true;
//    }
//    if (self.ButtonTwo.enabled == false) {
//        self.ButtonTwo.enabled = true;
//    }
//    if (self.ButtonThree.enabled == false) {
//        self.ButtonThree.enabled = true;
//    }
//    if (self.ButtonFour.enabled == false) {
//        self.ButtonFour.enabled = true;
//    }
//    if (self.ButtonFive.enabled == false) {
//        self.ButtonFive.enabled = true;
//    }
//    if (self.ButtonSix.enabled == false) {
//        self.ButtonSix.enabled = true;
//    }
//    if (self.ButtonSeven.enabled == false) {
//        self.ButtonSeven.enabled = true;
//    }
//    if (self.ButtonEight.enabled == false) {
//        self.ButtonEight.enabled = true;
//    }
//    if (self.ButtonNine.enabled == false) {
//        self.ButtonNine.enabled = true;
//    }
    

    //    self.ButtonOne.enabled = true;
//    self.ButtonTwo.enabled = true;
//    self.ButtonThree.enabled = true;
//    self.ButtonFour.enabled = true;
//    self.ButtonFive.enabled = true;
//    self.ButtonSix.enabled = true;
//    self.ButtonSeven.enabled = true;
//    self.ButtonEight.enabled = true;
//    self.ButtonNine.enabled = true;
//
//    self.ButtonOne.titleLabel.text = @"";
//    self.ButtonOne.enabled = true;
//    self.ButtonTwo.titleLabel.text = @"";
//    self.ButtonTwo.enabled = true;
//    self.ButtonThree.titleLabel.text = @"";
//    self.ButtonThree.enabled = true;
//    self.ButtonFour.titleLabel.text = @"";
//    self.ButtonFour.enabled = true;
//    self.ButtonFive.titleLabel.text = @"";
//    self.ButtonFive.enabled = true;
//    self.ButtonSix.titleLabel.text = @"";
//    self.ButtonSix.enabled = true;
//    self.ButtonSeven.titleLabel.text = @"";
//    self.ButtonSeven.enabled = true;
//    self.ButtonEight.titleLabel.text = @"";
//    self.ButtonEight.enabled = true;
//    self.ButtonNine.titleLabel.text = @"";
//    self.ButtonNine.enabled = true;
}

-(void)buttonsAllGo{
    //NSLog(@"buttons about to be reenabled| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);
        self.ButtonOne.enabled = true;
        self.ButtonTwo.enabled = true;
        self.ButtonThree.enabled = true;
        self.ButtonFour.enabled = true;
        self.ButtonFive.enabled = true;
        self.ButtonSix.enabled = true;
        self.ButtonSeven.enabled = true;
        self.ButtonEight.enabled = true;
        self.ButtonNine.enabled = true;
    //NSLog(@"buttons reenabled| 1%@2%@3%@4%@5%@6%@7%@8%@9%@", self.ButtonOne.titleLabel.text, self.ButtonTwo.titleLabel.text, self.ButtonThree.titleLabel.text, self.ButtonFour.titleLabel.text, self.ButtonFive.titleLabel.text, self.ButtonSix.titleLabel.text, self.ButtonSeven.titleLabel.text, self.ButtonEight.titleLabel.text, self.ButtonNine.titleLabel.text);

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"X";
    self.victoryTeam = [[NSMutableString alloc] init];
    
    self.ButtonOne.titleLabel.text = @"";
    self.ButtonTwo.titleLabel.text = @"";
    self.ButtonThree.titleLabel.text = @"";
    self.ButtonFour.titleLabel.text = @"";
    self.ButtonFive.titleLabel.text = @"";
    self.ButtonSix.titleLabel.text = @"";
    self.ButtonSeven.titleLabel.text = @"";
    self.ButtonEight.titleLabel.text = @"";
    self.ButtonNine.titleLabel.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
