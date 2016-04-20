//
//  main.m
//  OC_Test11
//
//  Created by SevenJustin on 13-10-15.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        //代码块变量的声明
        void(^myBlock)(int a, int b);
        //代码块变量的赋值
        myBlock = ^(int a, int b)
        {
            NSLog(@"a+b=%d", a+b);
        };
        //代码块变量的调用
        myBlock(1,2);
        
        
        
        
        
        
        
        
        {
        Teacher *teacher = [[Teacher alloc] init];
        Student *student = [[Student alloc] init];  
//
//        //老师布置作业，学生做作业并交作业
//        
//        //用代理实现
////        BOOL realized = [student conformsToProtocol:@protocol(Work)];
////        if (realized)
////        {
////            teacher.delegate = student;
////        }
////        [teacher assignWork];
//        
        //用Block实现的方法
        [teacher setWorkBlock:^NSDictionary *(NSString *title) {
            return [student doWork:title];  //先调用set方法，后调用
        }];
        [teacher assignWork:@"1+1=?"];
        
        [teacher release];
        [student release];
        }
        
    }
    return 0;
}












