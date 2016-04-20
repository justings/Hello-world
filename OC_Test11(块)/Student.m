//
//  Student.m
//  OC_Test11
//
//  Created by SevenJustin on 13-10-15.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSDictionary *) doWork:(NSString *) title
{
    NSLog(@"我是学生，我要做作业。");
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:title, @"title", @"guowei", @"name", @"1+1=2.", @"content", nil];
    return  dic;
}

@end
