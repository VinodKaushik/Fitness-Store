//
//  definitions.h
//  fitnessStore
//
//  Created by Sridharan, Bharath on 6/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//



/******  DEFINE RECTANGLES FOR VIEWS AND OTHER ELEMENTS  *****/


//MAIN WINDOW
#define WINDOW_WIDTH 1024
#define WINDOW_HEIGHT 768


//CATEGORY SELECTOR BAR WIDTH
#define CATEGORY_SELECTOR_BAR_WIDTH WINDOW_WIDTH
#define CATEGORY_SELECTOR_BAR_HEIGHT 45


#define BOTTOM_BAR_WIDTH WINDOW_WIDTH
#define BOTTOM_BAR_HEIGHT 45


#define TOTAL_NUMBER_OF_ITEMS_TREADMILL_CAROUSEL 20   //this includes brand seperator pages 
#define TOTAL_NUMBER_OF_ITEMS_ELLIPTICAL_CAROUSEL 10  //this includes brand seperator pages 
#define TOTAL_NUMBER_OF_ITEMS_CYCLES_CAROUSEL 20   //this includes brand seperator pages 
#define TOTAL_NUMBER_OF_ITEMS_STRENGTH_CAROUSEL 12    //this includes brand seperator pages 


#define NUMBER_OF_CATEGORIES 4


// Carousel specifications
// NOTES:  
// 1) (CAROUSEL_ITEM_WIDTH + GAP_BETWEEN_ITEMS)*number of items displayed + 2*CAROUSEL_ARROW_WIDTH = WINDOW_WIDTH.     Number of items displayed is calculated programattically.
// 2) CAROUSEL_ITEM_HEIGHT/CAROUSEL_ITEM_WIDTH should match aspect ratio of the images within the carousel box.


#define CAROUSEL_ITEM_WIDTH 200  //in pixels.     
#define CAROUSEL_ITEM_HEIGHT 50  //in pixels.ß
#define GAP_BETWEEN_ITEMS 10     //in pixels.     
#define CAROUSEL_ARROW_WIDTH 0   //in pixels - use this allowance on either side of the carousel items for pixel level adjustments

#define CAROUSEL_STRIP_HEIGHT 55
#define CAROUSEL_STRIP_WIDTH WINDOW_WIDTH


NSString * const categoryNames[] = {
    @"Treadmills", @"Ellipticals", @"Cycles", @"Strength Training"
};





