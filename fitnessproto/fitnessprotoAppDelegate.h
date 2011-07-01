//
//  fitnessprotoAppDelegate.h
//  fitnessproto
//
//  Created by Sridharan, Bharath on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class fitnessprotoViewController;

@interface fitnessprotoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet fitnessprotoViewController *viewController;

@end
