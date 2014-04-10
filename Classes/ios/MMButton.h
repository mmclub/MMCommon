//
//  MMButton.h
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MMMacro.h"

@interface MMButton : NSObject



+(UIButton *)buttonWithFrame :(CGRect) frame
                        title:(NSString *)title
                 borderWidth :(double) width
               borderColorRGB:(int) rgb
                       radius:(double)radius;


@end
