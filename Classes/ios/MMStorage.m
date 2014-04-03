//
//  MMStorage.m
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import "MMStorage.h"

@implementation MMStorage

+(void) setArray : (NSArray *)array key : (NSString *) keyName{
    NSData *arrayData = [NSKeyedArchiver archivedDataWithRootObject:array];
    [[NSUserDefaults standardUserDefaults] setObject:arrayData forKey:keyName];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
}
+(NSArray *) getArrayWithKey : (NSString *)keyName{
    NSData *arrayData = [[NSUserDefaults standardUserDefaults] objectForKey:keyName];
    NSArray *array =[NSKeyedUnarchiver unarchiveObjectWithData:arrayData];
    return array;
}


@end
