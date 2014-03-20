//
//  ACTile.h
//  Pirate Adventure
//
//  Created by Andrew Christie on 3/10/14.
//  Copyright (c) 2014 Andrew Christie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ACFactory.h"
#import "ACViewController.h"

@interface ACTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;


@end
