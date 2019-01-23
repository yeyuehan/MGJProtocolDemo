//
//  PublicProtocols.h
//  MGJDemo
//
//  Created by 韩旭亮 on 2019/1/23.
//  Copyright © 2019 韩旭亮. All rights reserved.
//

#ifndef PublicProtocols_h
#define PublicProtocols_h

#import <Foundation/Foundation.h>

@protocol JumpToBProtocol <NSObject>

- (void)jumpToBwithNavigationCon:(UINavigationController *)nav;

@end

#endif /* PublicProtocols_h */
