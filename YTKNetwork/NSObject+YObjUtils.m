//
//  NSObject+YObjUtils.m
//  YTKNetwork
//
//  Created by George on 2016/11/28.
//  Copyright © 2016年 skyline. All rights reserved.
//

#import "NSObject+YObjUtils.h"

@implementation NSObject (YObjUtils)

- (id)Y_defaultValue:(id)defaultData{
    if (![defaultData isKindOfClass:[self class]]) {
        return defaultData;
    }
    
    if ([self Y_isEmptyObject]) {
        return defaultData;
    }
    
    return self;
}
- (BOOL)Y_isEmptyObject{
    if ([self isEqual:[NSNull null]]) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSString class]]) {
        if ([(NSString *)self length] == 0) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSArray class]]) {
        if ([(NSArray *)self count] == 0) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSDictionary class]]) {
        if ([(NSDictionary *)self count] == 0) {
            return YES;
        }
    }
    
    return NO;

}

@end
