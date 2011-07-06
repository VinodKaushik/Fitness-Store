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
@synthesize iBottomControlsBar;
@synthesize iCarouselScrollView;

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
    
    [iBottomControlsBar release];
    iBottomControlsBar = nil;
    
    [iCarouselScrollView release];
    iCarouselScrollView = nil;
    
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
    [iCategorySelectorSegmentedControl release];
    iCategorySelectorSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBordered;
    iCategorySelectorSegmentedControl.selectedSegmentIndex = 0;
    [iCategorySelectorSegmentedControl addTarget:(self) action:@selector(segmentedControlIndexChanged) forControlEvents:(UIControlEventValueChanged)];
    

    iTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,120,50,30)];
    [self.view addSubview:iTestLabel];
    [iTestLabel release];
    
    //Toolbar bottom 
    iBottomControlsBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, (WINDOW_HEIGHT-BOTTOM_BAR_HEIGHT), BOTTOM_BAR_WIDTH, BOTTOM_BAR_HEIGHT)];
    [self.view addSubview:iBottomControlsBar];
    [iBottomControlsBar release];
    
    //Carousel
    iCarouselScrollView = [[UIScrollView alloc] init];
    iCarouselScrollView.frame = CGRectMake(0, (WINDOW_HEIGHT-BOTTOM_BAR_HEIGHT-CAROUSEL_STRIP_HEIGHT), CAROUSEL_STRIP_WIDTH, CAROUSEL_STRIP_HEIGHT);
    [self.view addSubview:iCarouselScrollView];
    [iCarouselScrollView release];
    iCarouselScrollView.scrollEnabled = YES;
    iCarouselScrollView.bounces = NO;
    iCarouselScrollView.maximumZoomScale = 1.0;
    iCarouselScrollView.minimumZoomScale = 1.0;
    iCarouselScrollView.showsHorizontalScrollIndicator = NO;
    iCarouselScrollView.showsVerticalScrollIndicator = NO;
    [self reconstructCarousel];
    
         
    //default selected category.
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


-(void) reconstructCarousel
{
    NSInteger totalNumberOfItems = 0;
    switch (iCurrentCategory)
    {
        case 0: totalNumberOfItems = TOTAL_NUMBER_OF_ITEMS_TREADMILL_CAROUSEL; break;
        case 1: totalNumberOfItems = TOTAL_NUMBER_OF_ITEMS_ELLIPTICAL_CAROUSEL; break;  
        case 2: totalNumberOfItems = TOTAL_NUMBER_OF_ITEMS_CYCLES_CAROUSEL; break;   
        case 3: totalNumberOfItems = TOTAL_NUMBER_OF_ITEMS_STRENGTH_CAROUSEL; break;   
    }
    
    //Carousel content size
    iCarouselContentSize = CGSizeMake((totalNumberOfItems*(CAROUSEL_ITEM_WIDTH+GAP_BETWEEN_ITEMS) + 2*CAROUSEL_ARROW_WIDTH), CAROUSEL_STRIP_HEIGHT);
    [iCarouselScrollView setContentSize:iCarouselContentSize];
    
    UILabel* iTest1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 600, CAROUSEL_STRIP_HEIGHT)];
    UILabel* iTest2 = [[UILabel alloc] initWithFrame:CGRectMake(600, 0, iCarouselContentSize.width-600, CAROUSEL_STRIP_HEIGHT)];
    [iCarouselScrollView addSubview:iTest1];
    [iTest1 release];
    [iCarouselScrollView addSubview:iTest2];
    [iTest2 release];
    
    iTest1.text = @"First";
    iTest2.text = @"Second";
    
    //Arrows
    
    //Carousel Items
    

}



// ACTIONS //

// Category is changed due to a click. This will call setSelectedCategory.
- (void) segmentedControlIndexChanged 
{
    if(iCategorySelectorSegmentedControl.selectedSegmentIndex!=iCurrentCategory){
        [self setSelectedCategory:iCategorySelectorSegmentedControl.selectedSegmentIndex];
    }

}

@end
