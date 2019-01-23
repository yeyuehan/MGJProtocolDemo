//
//  ModuleManager.m
//  MGJDemo
//
//  Created by 夜月韩 on 2019/1/17.
//  Copyright © 2019 夜月韩. All rights reserved.
//

#import "ModuleManager.h"

@implementation ModuleManager

+ (instancetype)instance {
    static dispatch_once_t onceToken;
    static ModuleManager *manager = nil;
    
    dispatch_once(&onceToken, ^{
        manager = [ModuleManager new];
    });
    return manager;
}

+ (void)registerClass:(Class)class forProtocol:(Protocol *)protocol
{
    NSMutableDictionary *dic = [[ModuleManager instance] dic];
    [dic setObject:class forKey:NSStringFromProtocol(protocol)];
}

+ (Class)classForProtocol:(Protocol *)protocol
{
    NSMutableDictionary *dic = [[ModuleManager instance] dic];
    return dic[NSStringFromProtocol(protocol)];
}

- (NSMutableDictionary *)dic
{
    if (!dic) {
        dic = [[NSMutableDictionary alloc] init];
    }
    return dic;
}

@end
