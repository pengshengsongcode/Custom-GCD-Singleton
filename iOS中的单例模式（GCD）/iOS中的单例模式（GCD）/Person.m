//
//  Person.m
//  iOS中的单例模式（GCD）
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import "Person.h"

@interface Person () <NSCopying>

@end

@implementation Person

static id _instance;

//alloc 底层调用该方法

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    //arg：onceToken 为该函数调用次数，默认为0，调用一次即onceToken为1，每次调用该函数时判断onceToken的值，若为1则不调用
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

//命名规范，share类方法，快速实现单例
+ (instancetype)sharePerson {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
       _instance = [[self alloc]init];
    });
    return _instance;
}

//实例对象调用copy方法
- (id)copyWithZone:(NSZone *)zone {

    return _instance;
}

@end
