//
//  CircularUIViewController.m
//  CircularUI
//
//  Created by Fabrizio Lapiello on 14/06/11.
//  Copyright 2011 Fabrizio Lapiello. All rights reserved.
//

#import "CircularUIViewController.h"
#import "DeviceHelper.h"

@implementation CircularUIViewController

-(void)viewDidLoad
{	
	//fake for horizontal scroll
	CGRect fakeRect = [DeviceHelper getDeviceSize];
	
	UIScrollView *mainView = (UIScrollView *)self.view;
	
	[mainView setFrame:fakeRect];
	
	fakeRect.size.width *= 3;
	
	[mainView setContentSize:CGSizeMake(fakeRect.size.width, fakeRect.size.height)];
	[mainView setScrollEnabled:TRUE];
	
	
	
	
	
	
	UIImageView *img = [UIImageView new];
	[img setFrame:fakeRect];
	[img setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"main" ofType:@"png"]]];
	[img setContentMode:UIViewContentModeScaleAspectFill];
	[self.view addSubview:img];
	[img release];
	
}


- (void)dealloc
{
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
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	// Return YES for supported orientations
	return YES;
}

@end
