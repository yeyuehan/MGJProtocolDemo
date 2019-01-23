//
//  ModuleManager.h
//  MGJDemo
//
//  Created by 夜月韩 on 2019/1/17.
//  Copyright © 2019 夜月韩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ModuleProtocol <NSObject>

//APP生命周期相关代理分发
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
//省略若干
@end

NS_ASSUME_NONNULL_BEGIN

@interface ModuleManager : NSObject
{
    NSMutableDictionary *dic;
}

//获取远程配置的组件URLs
+ (instancetype)instance;
- (void)loadModuleFromPlist:(NSString *)plistPath;
- (NSArray *)allModules;

//注册组件协议及关联类
+ (void)registerClass:(Class)xClass forProtocol:(Protocol *)protocol;
+ (Class)classForProtocol:(Protocol *)protocol;
@end

NS_ASSUME_NONNULL_END
