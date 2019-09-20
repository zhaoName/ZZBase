//
//  ZZNetworkHandle.h
//  AFNetworking
//
//  Created by zhao on 2019/9/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^PPHTTPRequestSuccessBlock)(NSURLSessionDataTask *task,id responeData);
typedef void(^PPHttpRequestFailureBlock)(NSURLSessionDataTask *task,NSError *error);

@interface ZZNetworkHandle : NSObject

/**
 get请求
 
 @param urlString 路径
 @param parameter 参数
 @param success 成功回调
 @param failure 失败回调
 */
+ (void)GET:(NSString *)urlString parameters:(NSDictionary *)parameter success:(PPHTTPRequestSuccessBlock)success failure:(PPHttpRequestFailureBlock)failure;

+ (void)POST:(NSString *)urlString parameters:(NSDictionary *)parameter success:(PPHTTPRequestSuccessBlock)success failure:(PPHttpRequestFailureBlock)failure;

@end

NS_ASSUME_NONNULL_END
