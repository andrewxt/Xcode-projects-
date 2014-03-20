#import "ACFirstViewController.h"



@implementation ACFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.descriptionText.hidden = YES;
    
    self.mainViewImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 445)];
    [self.view addSubview:self.mainViewImage];
    
    
    UIImage *beachImage = [UIImage imageNamed:@"Malibu_Sunset_1.jpg"];
    UIImage *cityImage = [UIImage imageNamed:@"chicago_marina_city_parking_garages.jpg"];
    UIImage *lodgeImage = [UIImage imageNamed:@"ski_lodge.jpg"];
    UIImage *farmImage = [UIImage imageNamed:@"ideal-farm-house-photo.jpg"];
    
    self.vacationImages = [NSArray arrayWithObjects:beachImage, cityImage, lodgeImage, farmImage, nil];
    
    self.currentValue = 0;
    
    
    UISwipeGestureRecognizer *leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFromLeft: )];
    [leftRecognizer setDirection: UISwipeGestureRecognizerDirectionLeft];
    [[self view] addGestureRecognizer:leftRecognizer];
    
    UISwipeGestureRecognizer *rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFromRight:)];
    [rightRecognizer setDirection: UISwipeGestureRecognizerDirectionRight];
    [[self view] addGestureRecognizer:rightRecognizer];
    
    
    descriptions = @[@"Enjoy Jamaica's nice warm weather with beautiful white sand beaches and delicious island cuisine.", @"Enjoy the great city of Chicago. Take in the city life and enjoy the many eateries and theaters", @"Have great fun at this Colorado lodge. Take advantage of one of best ski mountians in the state.", @"Bring your horse to this great rural Kansas farm. Enjoy quiet peacful land and spend quality time with family."];
    
}

- (void) handleSwipeFromLeft: (id) sender
{
    if (self.currentValue == 0)
    {
        self.currentValue = 3;
    }
    else
    {
        self.currentValue--;
    }
    
    UIImage *currentImage = [self.vacationImages objectAtIndex:self.currentValue];
    self.mainViewImage.image = currentImage;
    
    self.descriptionText.hidden = NO;
    self.descriptionText.text = [descriptions objectAtIndex:self.currentValue];
    
}

- (void) handleSwipeFromRight: (id) sender
{
    if (self.currentValue == 3)
    {
        self.currentValue = 0;
    }
    else
    {
        self.currentValue++;
    }
    
    UIImage *currentImage = [self.vacationImages objectAtIndex:self.currentValue];
    self.mainViewImage.image = currentImage;
    
    self.descriptionText.hidden = NO;
    self.descriptionText.text = [descriptions objectAtIndex:self.currentValue];
}

@end


