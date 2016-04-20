//
//  Teacher.m
//  OC_Test11
//
//  Created by SevenJustin on 13-10-15.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

-(void) setWorkBlock:(Work_Block)aBlock
{
    if (aBlock != work_block)
    {
        Block_release(work_block);
        work_block = Block_copy(aBlock);
    }
}


-(void) assignWork:(NSString *)title
{
//    NSString *title = @"protocol";
//    NSDictionary *dic = [self.delegate doWork:title];
    
    //调用Block
    NSDictionary *dic;
    if (work_block)
    {
        dic = work_block(title); //block的调用
    }
    NSLog(@"%@", dic);
}

@end










