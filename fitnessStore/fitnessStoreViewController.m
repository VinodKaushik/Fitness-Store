//
//  fitnessStoreViewController.m
//  fitnessStore
//
//  Created by Sridharan, Bharath on 6/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "fitnessStoreViewController.h"
#import "definitions.h"


@implementation fitnessStoreViewController

@synthesize iTestLabel;
@synthesize iCurrentCategory;
@synthesize iCategorySelectorSegmentedControl;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        iCurrentCategory = 0;
    }
    return self;
}

- (void)dealloc
{
    [self.view release];
    self.view = nil;
    
    [iTestLabel release];
    iTestLabel = nil;
    
    [iCategorySelectorSegmentedControl release];
    iCategorySelectorSegmentedControl = nil;
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    
    
    //allocate the main view
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    
    //create category selector bar
    
    //segmented control
    iCategorySelectorSegmentedControl = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Treadmills", @"Ellipticals", @"Cycles", @"Strength", nil]];
    iCategorySelectorSegmentedControl.frame = CGRectMake(0, 0, CATEGORY_SELECTOR_BAR_WIDTH, CATEGORY_SELECTOR_BAR_HEIGHT);
    [self.view addSubview:iCategorySelectorSegmentedControl];
    iCategorySelectorSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBordered;
    iCategorySelectorSegmentedControl.selectedSegmentIndex = 0;
    [iCategorySelectorSegmentedControl addTarget:(self) action:@selector(segmentedControlIndexChanged) forControlEvents:(UIControlEventValueChanged)];
    

    iTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,120,50,30)];
    [self.view addSubview:iTestLabel];
    
    
    //default selection.
    [self setSelectedCategory:0];  
    
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations - Landscape
    if((interfaceOrientation == UIInterfaceOrientationLandscapeRight)||(interfaceOrientation == UIInterfaceOrientationLandscapeLeft))
    {
        return YES;
    }
    else
    {
        return NO;
    }    
}

// Actions to take when category is changed
- (void)setSelectedCategory:(NSInteger)category
{
    // NOTE: This method will not check if the same category was clicked. That logic has to be written elsewhere.
    
    NSInteger oldCategory = iCurrentCategory;
    iCurrentCategory = category;
    
    NSString* inStr = [NSString stringWithFormat:@"%d", iCategorySelectorSegmentedControl.selectedSegmentIndex];
    iTestLabel.text = inStr;
     
}

// Category is changed
- (void) segmentedControlIndexChanged 
{
    if(iCategorySelectorSegmentedControl.selectedSegmentIndex!=iCurrentCategory){
        [self setSelectedCategory:iCategorySelectorSegmentedControl.selectedSegmentIndex];
    }

}

@end
