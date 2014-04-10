//
//  MMViewControllerHelper.m
//  MMCommonExample
//
//  Created by xiangyu on 4/10/14.
//  Copyright (c) 2014 xiangyu. All rights reserved.
//

#import "MMViewControllerHelper.h"

@implementation MMViewControllerHelper


+(void)addPlaceHolderLabelToView :(UIViewController *) vc {
    UILabel *label = [[UILabel alloc] initWithFrame:vc.view.bounds];
    [label setText:NSStringFromClass([vc class])];
    [vc.view addSubview:label];
}
@end
