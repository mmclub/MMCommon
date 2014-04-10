//
//  MMStorage.h
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMStorage : NSObject

+(void) setArray : (NSArray *)array key : (NSString *) keyName;
+(NSArray *) getArrayWithKey : (NSString *)keyName;
+(NSString *)storeImage:(UIImage *)image withName:(NSString *)name;
+(UIImage *)imageFromName:(NSString *)name;


@end
