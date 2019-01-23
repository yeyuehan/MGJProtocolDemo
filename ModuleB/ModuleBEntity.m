//
//  ModuleBEntity.m
//  MGJDemo
//
//  Created by 夜月韩 on 2019/1/18.
//  Copyright © 2019 夜月韩. All rights reserved.
//

#import "ModuleBEntity.h"
#import "ModuleManager.h"
#import "ModuleBListController.h"
@implementation ModuleBEntity

+ (void)load
{
    //[ModuleBEntity registerURLs];
    [ModuleBEntity registerProtocols];
}

+ (void)registerProtocols
{
    [ModuleManager registerClass:NSClassFromString(@"ModuleBEntity") forProtocol:NSProtocolFromString(@"JumpToDetailProtocol")];
}

- (void)jumpToBwithNavigationCon:(UINavigationController *)navCon
{
    ModuleBListController *con = [[ModuleBListController alloc] init];
    [navCon pushViewController:con animated:YES];
}
@end
