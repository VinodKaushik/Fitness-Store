//
//  fitnessStoreViewController.h
//  fitnessStore
//
//  Created by Sridharan, Bharath on 6/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface fitnessStoreViewController : UIViewController {
    
    UISegmentedControl* iCategorySelectorSegmentedControl;
    UILabel* iTestLabel;
    UIToolbar* iBottomControlsBar; //UI element for the bottom controls

@private
    NSInteger iCurrentCategory;  // ranging from 0-3. 
    
}
- (void) setSelectedCategory:(NSInteger)category;	
- (void) segmentedControlIndexChanged;

@property (nonatomic, retain) UILabel* iTestLabel;
@property (nonatomic, retain) UISegmentedControl* iCategorySelectorSegmentedControl;
@property (nonatomic, retain) UIToolbar* iBottomControlsBar;
@property (nonatomic, assign) NSInteger iCurrentCategory; 


@end

