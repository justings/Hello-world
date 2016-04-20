//
//  Teacher.h
//  OC_Test11
//
//  Created by SevenJustin on 13-10-15.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Work.h"

typedef NSDictionary *(^Work_Block)(NSString *title);

@interface Teacher : NSObject
{
    Work_Block work_block;
}
//setter
-(void) setWorkBlock:(Work_Block)aBlock;

@property(assign, nonatomic) id<Work>delegate;

-(void) assignWork:(NSString *)title;

@end
