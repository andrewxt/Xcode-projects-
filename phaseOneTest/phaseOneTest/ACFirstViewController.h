//
//  ACFirstViewController.h
//  phaseOneTest
//
//  Created by Andrew Christie on 3/17/14.
//  Copyright (c) 2014 Andrew Christie. All rights reserved.
//

#import <UIKit/UIKit.h>

UIImageView *bgImageView;
NSArray *vacationImages;
int currentImageIndex;

NSArray *descriptions;

@interface ACFirstViewController : UIViewController

@property (nonatomic, strong) UIImageView *mainViewImage;
@property (nonatomic) int currentValue;
@property (nonatomic, strong) NSArray *vacationImages;

@property (strong, nonatomic) IBOutlet UITextView *descriptionText;

@end
