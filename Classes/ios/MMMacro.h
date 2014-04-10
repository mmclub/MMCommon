//
//  MMMacro.h
//  MMCommonExample
//
//  Created by xiangyu on 4/3/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#ifndef MMCommonExample_MMMacro_h
#define MMCommonExample_MMMacro_h


#define SELF_VIEW_BOUNDS_WITHOUT_NAV (CGRectMake( self.view.bounds.origin.x , self.view.bounds.origin.y + 64, self.view.bounds.size.width, self.view.bounds.size.height - 64 ))



#ifdef DEBUG
#define DebugLog( s, ... ) NSLog( @"[FILE]%@ %*s [LINE]%-*d [METHOD]%@ %*s [MESSAGE]%@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent],30 - ([[[NSString stringWithUTF8String:__FILE__] lastPathComponent] length]),"", 5,__LINE__, NSStringFromSelector(_cmd), 75 - ([NSStringFromSelector(_cmd) length]),"", [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define DebugLog( s, ... )
#endif


#define SELF_VIEW_BOUNDS_WITHOUT_NAV (CGRectMake( self.view.bounds.origin.x , self.view.bounds.origin.y + 64, self.view.bounds.size.width, self.view.bounds.size.height - 64 ))



#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



#endif



