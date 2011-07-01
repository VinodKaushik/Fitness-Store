//
//  fitnessprotoViewController.m
//  fitnessproto
//
//  Created by Sridharan, Bharath on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "fitnessprotoViewController.h"

@implementation fitnessprotoViewController
@synthesize iTestScrollView;
@synthesize iTestContainerView;
@synthesize iTestLabel1;
@synthesize iTestLabel2;
@synthesize iCategorySelectorSegmentedControl;
@synthesize iTestLabel;

- (void)dealloc
{
    [iCategorySelectorSegmentedControl release];
    [iTestLabel release];
    [iTestScrollView release];
    [iTestOne release];
    [iTestTwo release];
    [iTestThree release];
    [iTestFour release];
    [iTestContainerView release];
    [iTestLabel1 release];
    [iTestLabel2 release];
        [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setICategorySelectorSegmentedControl:nil];
    [self setITestLabel:nil];
    [self setITestScrollView:nil];

    [self setITestContainerView:nil];
    [self setITestLabel1:nil];
    [self setITestLabel2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)categoryChanged:(id)sender {
    switch (self.iCategorySelectorSegmentedControl.selectedSegmentIndex) {
        case 0:
            self.iTestLabel.text =@"Treadmills.";
            break;
        case 1:
            self.iTestLabel.text =@"Ellipticals";
            break;
        case 2:
            self.iTestLabel.text =@"Cycles";
            break;
        case 3:
            self.iTestLabel.text =@"Strength";
            break;
        default:
            break;
    }

}


- (void)viewDidLoad{
    CGSize scrollViewContentSize = iTestContainerView.bounds.size; // Read this as sum of width of all labels.
    [iTestScrollView setContentSize:scrollViewContentSize];
    [iTestContainerView addSubview:iTestLabel1];
    [iTestContainerView addSubview:iTestLabel2];
    [iTestScrollView addSubview:iTestContainerView];
    [self.view addSubview:iTestScrollView];
}
@end
