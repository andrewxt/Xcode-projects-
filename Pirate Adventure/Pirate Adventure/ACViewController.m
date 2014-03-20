//
//  ACViewController.m
//  Pirate Adventure
//
//  Created by Andrew Christie on 3/10/14.
//  Copyright (c) 2014 Andrew Christie. All rights reserved.
//

#import "ACViewController.h"
#import "ACFactory.h"
#import "ACTile.h"

@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ACFactory *factory = [[ACFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0, 0);
    [self updateTile];
    [self updateButtons];
                             
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y +1);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)westButtonPressed:(id)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
    
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x , self.currentPoint.y - 1);
    [self updateTile];
    [self updateButtons];
    
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
    
}

-(void)updateTile
{
    ACTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    
}

-(void)updateButtons
{
    self.westButton.hidden = [self tilesExistsAtAPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tilesExistsAtAPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tilesExistsAtAPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tilesExistsAtAPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}


-(BOOL)tilesExistsAtAPoint: (CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x]count]) {
        return NO;
        
    }
    else return YES;
}
@end
