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
    UIScrollView* iCarouselScrollView;    
    UIView* iContentViewBar;

@private
    NSInteger iCurrentCategory;  // ranging from 0-3. 
    CGSize iCarouselContentSize;
}
- (void) setSelectedCategory:(NSInteger)category;
- (void) reconstructCarousel;
- (void) segmentedControlIndexChanged;

@property (nonatomic, retain) UILabel* iTestLabel;
@property (nonatomic, retain) UISegmentedControl* iCategorySelectorSegmentedControl;
@property (nonatomic, retain) UIToolbar* iBottomControlsBar;
@property (nonatomic, retain) UIScrollView* iCarouselScrollView;
@property (nonatomic, retain) UIView* iThumbNailStrip;

@property (nonatomic, assign) NSInteger iCurrentCategory; 

@end

