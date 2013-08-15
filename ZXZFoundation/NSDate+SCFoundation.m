//
//  NSDate+SCFoundation.m
//  SCFoundation
//
//  Created by Sean Cheng on 7/23/13.
//  Copyright (c) 2013 Extremely Limited. All rights reserved.
//

#import "NSDate+SCFoundation.h"

@implementation NSDate (SCFoundation)

+ (NSDate*)dateFromString:(NSString*)string {
	// Setting DateFormatter
	static NSDateFormatter* format = nil;
	if (format == nil) {
		format = [[NSDateFormatter alloc] init];
		[format setDateStyle:NSDateFormatterLongStyle];
		[format setTimeStyle:NSDateFormatterNoStyle];
		[format setDateFormat:@"EEE MMM dd HH:mm:ss Z yyyy"];
	}
	return [format dateFromString:string];
}

@end
