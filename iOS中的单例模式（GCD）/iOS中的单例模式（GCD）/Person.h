//
//  Person.h
//  iOS中的单例模式（GCD）
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

+ (instancetype)sharePerson;

@end
