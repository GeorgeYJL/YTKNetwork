//
//  YlogUtils.h
//  YTKNetwork
//
//  Created by George on 2016/11/28.
//  Copyright © 2016年 skyline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YTKNetworkPrivate.h"

@interface YlogUtils : NSObject

+ (void)logDebugInfoWithRequest:(NSURLRequest *)request requestParams:(id)requestParams httpMethod:(NSString *)httpMethod;
+ (void)logDebugInfoWithResponse:(NSHTTPURLResponse *)response responseString:(NSString *)responseString request:(NSURLRequest *)request error:(NSError *)error;

@end
