//
//  SecondViewController.m
//  AlienESP
//
//  Created by Crack on 3/3/18.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"
#import "RootViewController.h"
#import "FirstViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface SecondViewController ()

@property (strong, nonatomic) AppDelegate *appDelegate;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;
@property (weak, nonatomic) IBOutlet UILabel *guessesLabel;
@property (weak, nonatomic) IBOutlet UIButton *checkButton;

@end

@implementation SecondViewController

- (IBAction)checkPress:(id)sender {
    self.appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    RootViewController *rootVC = (RootViewController *)self.appDelegate.window.rootViewController;
    self.guessesLabel.text = [NSString stringWithFormat:@"Number of Guesses: %d", self.guesses];
    if ([self.selectedCard isEqualToString:rootVC->randomCard]) {
        [self performSelector:@selector(playWinSound)
                   withObject:nil
                   afterDelay:.5];
    }
    else {
        self.winLabel.text = [NSString stringWithFormat:@"Wrong."];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)playWinSound {
    SystemSoundID winSoundID;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"02 Takeover" withExtension:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &winSoundID);
    AudioServicesPlaySystemSound(winSoundID);
    self.winLabel.text = @"WINNER!";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
