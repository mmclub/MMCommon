//
//  MMHTTP.m
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import "MMHTTP.h"

@implementation MMHTTP

+(NSURLRequest *)urlRequestFromString:(NSString *)string{
    NSURL *url = [NSURL URLWithString:string];
    return [NSURLRequest requestWithURL:url];
}


@end
