//
//  FirstViewController.m
//  AlienESP
//
//  Created by Crack on 3/3/18.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "RootViewController.h"
#import "AppDelegate.h"
#include <time.h>
#include <stdlib.h>
#import <UIKit/UIKit.h>
#define FaceComponent 0
#define SuitComponent   1

@interface FirstViewController ()

@property (strong, nonatomic) NSArray *faceValue;
@property (strong, nonatomic) NSArray *suitValue;
@property (weak, nonatomic) IBOutlet UIPickerView *cardPicker;
@property (strong, nonatomic) AppDelegate *appDelegate;
- (IBAction) selectCardTapped:(id)sender;

@end

@implementation FirstViewController
    
NSString * selectedFaceValue;
NSString * selectedSuitValue;

- (void)viewDidLoad {
    [super viewDidLoad];
        
    SecondViewController *secondView =  [[SecondViewController alloc] init];
    secondView.selectedCard = @"";
    secondView.guesses++;
    self.faceValue = @[@"The 1 of", @"The 2 of", @"The 3 of",
                          @"The 4 of", @"The 5 of",
                       @"The 6 of", @"The 7 of", @"The 8 of", @"The 9 of", @"The 10 of",
                       @"The 11 of", @"The 12 of",
                       @"The 13 of"];
    
    self.suitValue = @[@"♥️", @"♣️", @"♦️", @"♠️"];
    
    selectedFaceValue = self.faceValue[0];
    selectedSuitValue = self.suitValue[0];
    
    [self.cardPicker selectRow:0 inComponent:0 animated:NO];
    [self.cardPicker selectRow:0 inComponent:1 animated:NO];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component {
    if (component == 0)
        return [self.faceValue count];
    else
        return [self.suitValue count];
}

#pragma mark Picker Delegate Methods
- (NSString*)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
      forComponent:(NSInteger)component {
    if (component == 0)
        return self.faceValue[row];
    else
        return self.suitValue[row];
}

- (IBAction)selectCardTapped:(id)sender {
    [self selectCurrentCard];
}

- (void) selectCurrentCard {
    //  SecondViewController *secondView =  [[SecondViewController alloc] init];
    NSString * selectedCard = [NSString stringWithFormat:@"%@ %@", selectedFaceValue, selectedSuitValue];
 // secondView.guesses++;
   // ^^ do you still need this view 
   [[CardManager sharedCardManager]setSelectedCard: selectedCard];
    // you can create a guesses variable in the card maanger as well
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) 
        selectedFaceValue = self.faceValue[row];
    else 
        selectedSuitValue = self.suitValue[row];
}

@end

