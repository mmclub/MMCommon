//
//  MMButton.m
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import "MMButton.h"

@implementation MMButton

+(UIButton *)buttonWithFrame :(CGRect) frame
                        title:(NSString *)title
                 borderWidth :(double) width
               borderColorRGB:(int) rgb
                       radius:(double)radius{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    button.layer.borderWidth = width;
    button.layer.borderColor = UIColorFromRGB(rgb).CGColor;
    button.layer.cornerRadius = 10;
    [button setTitle:title forState:UIControlStateNormal];
    
    return button;
}

@end
