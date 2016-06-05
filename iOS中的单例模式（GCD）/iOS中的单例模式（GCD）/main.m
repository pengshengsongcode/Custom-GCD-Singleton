//
//  main.m
//  iOS中的单例模式（GCD）
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *person1 = [[Person alloc] init];
        
        Person *person2 = [Person sharePerson];
        
        Person *person3;
        
        person3 = [person2 copy];
        
        NSLog(@"person1:%@", person1);
        NSLog(@"person2:%@", person2);
        NSLog(@"person3:%@", person3);
    
    }
    return 0;
}
