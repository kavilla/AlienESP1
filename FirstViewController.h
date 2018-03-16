//
//  FirstViewController.h
//  AlienESP
//
//  Created by Crack on 3/3/18.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardManager.h"

@interface FirstViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    @public int cardNumber;
}

@end

