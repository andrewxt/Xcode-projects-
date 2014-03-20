//
//  ACFactory.m
//  Pirate Adventure
//
//  Created by Andrew Christie on 3/10/14.
//  Copyright (c) 2014 Andrew Christie. All rights reserved.
//

#import "ACTile.h"
#import "ACFactory.h"
#import "ACViewController.h"

@implementation ACFactory

-(NSArray *)tiles;
{
    ACTile *tile1 = [[ACTile alloc]init];
    tile1.story = @"Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.png"];
    
    
    ACTile *tile2 = [[ACTile alloc]init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.png"];
    
    
    ACTile *tile3 = [[ACTile alloc]init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    ACTile *tile4 = [[ACTile alloc]init];
    tile4.story = @"You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    
    
    
    ACTile *tile5 = [[ACTile alloc]init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpg"];
    
    
    ACTile *tile6 = [[ACTile alloc]init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    ACTile *tile7 = [[ACTile alloc]init];
    tile7.story = @"You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpg"];
    
    
    ACTile *tile8 = [[ACTile alloc]init];
    tile8.story = @"The legend of the deep, the mighty kraken appear";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    
    
    ACTile *tile9 = [[ACTile alloc]init];
    tile9.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasurer.jpg"];
    
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    ACTile *tile10 = [[ACTile alloc]init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    
    
    ACTile *tile11 = [[ACTile alloc]init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpg"];
    
    
    ACTile *tile12 = [[ACTile alloc]init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpg"];
    
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
    
}

@end
