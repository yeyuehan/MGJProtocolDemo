//
//  ModuleAEntity.h
//  MGJDemo
//
//  Created by 夜月韩 on 2019/1/17.
//  Copyright © 2019 夜月韩. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleAEntity : NSObject

+ (void)registerURLs;       //向MGJRouter注册该组件相关对外URL
+ (void)registerProtocols;  //向ModuleManager注册该组件相关Protocol
@end

NS_ASSUME_NONNULL_END
