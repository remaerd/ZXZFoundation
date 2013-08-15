//
//  NSString+SCFoundation.h
//  SCFoundation
//
//  Created by Sean Cheng on 7/23/13.
//  Copyright (c) 2013 Extremely Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (ZXZFoundation)

- (NSString *)stringByDecodingHTMLEntities;
- (UIColor*)colorFromHexString;

@end
