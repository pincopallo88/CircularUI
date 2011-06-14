//
//  CircularUIAppDelegate.h
//  CircularUI
//
//  Created by Fabrizio Lapiello on 14/06/11.
//  Copyright 2011 Fabrizio Lapiello. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CircularUIViewController;

@interface CircularUIAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CircularUIViewController *viewController;

@end
