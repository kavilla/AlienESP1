//
//  RootViewController.m
//  AlienESP
//
//  Created by Crack on 3/5/18.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property int randomNum;
@property int face;
@property int suit;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.randomNum = arc4random() % 52;
    self.face = self.randomNum % 13;
    if (self.face == 0)
        self.face = 13;
    self.suit = self.randomNum - self.face;
    if (self.suit == 0)
        randomCard = [NSString stringWithFormat:@"The %d of ♥️", self.face];
    if (self.suit == 13)
        randomCard = [NSString stringWithFormat:@"The %d of ♣️", self.face];
    if (self.suit == 26)
        randomCard = [NSString stringWithFormat:@"The %d of ♦️", self.face];
    if (self.suit == 39)
        randomCard = [NSString stringWithFormat:@"The %d of ♠️", self.face];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
