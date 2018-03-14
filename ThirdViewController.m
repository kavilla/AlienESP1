//
//  ThirdViewController.m
//  AlienESP
//
//  Created by Crack on 3/5/18.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"
#import "RootViewController.h"
#import "FirstViewController.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UIButton *hintButton;
@property (weak, nonatomic) IBOutlet UILabel *cardLabel;
@property (weak, nonatomic) IBOutlet UILabel *dismayLabel;
@property (strong, nonatomic) AppDelegate *appDelegate;
@property int face;
@property int suit;

@end

@implementation ThirdViewController

- (IBAction)pressButton:(id)sender {
    self.appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    RootViewController *rootVC = (RootViewController *)self.appDelegate.window.rootViewController;
    self.cardLabel.enabled = YES;
    [self.cardLabel setText:rootVC->randomCard];
    self.dismayLabel.enabled = YES;
    [self.dismayLabel setText:@"Dismay."];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cardLabel.enabled = NO;
    self.dismayLabel.enabled = NO;

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
