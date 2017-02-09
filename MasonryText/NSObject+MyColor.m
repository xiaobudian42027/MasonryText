//
//  NSObject+MyColor.m
//  MasonryText
//
//  Created by xiaorenwu on 2017/2/8.
//  Copyright © 2017年 xiaorenwu. All rights reserved.
//

#import "NSObject+MyColor.h"
#import "masonry_config.h"
#import <objc/runtime.h>
@implementation NSObject (MyColor)
@dynamic myColor;

YYSYNTH_DYNAMIC_PROPERTY_OBJECT(myColor, setMyColor, RETAIN, UIColor*);

@end
