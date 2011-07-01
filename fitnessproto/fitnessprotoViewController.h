//
//  fitnessprotoViewController.h
//  fitnessproto
//
//  Created by Sridharan, Bharath on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fitnessprotoViewController : UIViewController {
    
    UISegmentedControl *iCategorySelectorSegmentedControl;
    UILabel *iTestLabel;
    UIScrollView *iTestScrollView;
    UIView *iTestContainerView;
    UILabel *iTestLabel1;
    UILabel *iTestLabel2;
    UILabel *iTestOne;
    UILabel *iTestTwo;
    UILabel *iTestThree;
    UILabel *iTestFour;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *iCategorySelectorSegmentedControl;
@property (nonatomic, retain) IBOutlet UILabel *iTestLabel;
- (IBAction)categoryChanged:(id)sender;
@property (nonatomic, retain) IBOutlet UIScrollView *iTestScrollView;
@property (nonatomic, retain) IBOutlet UIView *iTestContainerView;
@property (nonatomic, retain) IBOutlet UILabel *iTestLabel1;
@property (nonatomic, retain) IBOutlet UILabel *iTestLabel2;


@end
