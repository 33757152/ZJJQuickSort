//
//  ZJJSortTool.m
//  ZJJQuickSort
//
//  Created by 张锦江 on 2018/1/3.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ZJJSortTool.h"

@implementation ZJJSortTool

+ (void)quickSortWithArray:(NSMutableArray *)array withLeftIndex:(NSInteger)leftIndex withRightIndex:(NSInteger)rightIndex {
    if (leftIndex >= rightIndex) {
        return;
    }
    NSInteger i = leftIndex;
    NSInteger j = rightIndex;
    NSInteger key = [array[i] integerValue];
    while (i < j) {
        while (i < j && key <= [array[j] integerValue]) {
            j -- ;
        }
        array[i] = array[j];
        while (i < j && key >= [array[i] integerValue]) {
            i ++;
        }
        array[j] = array[i];
    }
    array[i] = @(key);
    [self quickSortWithArray:array withLeftIndex:leftIndex withRightIndex:i-1];
    [self quickSortWithArray:array withLeftIndex:i+1 withRightIndex:rightIndex];
}

@end
