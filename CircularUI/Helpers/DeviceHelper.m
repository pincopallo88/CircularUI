//
//  DeviceHelper.m
//  CircularUI
//
//  Created by Daniele on 16/06/11.
//  Copyright 2011 Fabrizio Lapiello. All rights reserved.
//

#import "DeviceHelper.h"


@implementation DeviceHelper

+(CGRect)getDeviceSize
{
	return [[UIScreen mainScreen] applicationFrame];
}


@end
