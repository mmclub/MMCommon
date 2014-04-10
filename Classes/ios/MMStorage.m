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


+(NSString *)storeImage:(UIImage *)image withName:(NSString *)name{
    NSData *imageData = UIImagePNGRepresentation(image);
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *imagePath =[documentsDirectory stringByAppendingPathComponent:name];
    
    NSLog((@"pre writing to file"));
    if (![imageData writeToFile:imagePath atomically:NO])
    {
        NSLog(@"Failed to cache image data to disk");
    }
    else
    {
        NSLog(@"the cachedImagedPath is %@",imagePath);
    }
    
    return imagePath;
}

+(UIImage *)imageFromName:(NSString *)name{
    return [UIImage imageWithContentsOfFile:name];
}




@end
