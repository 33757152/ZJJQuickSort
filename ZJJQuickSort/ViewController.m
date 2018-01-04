//
//  ViewController.m
//  ZJJQuickSort
//
//  Created by 张锦江 on 2018/1/3.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ViewController.h"
#import "ZJJSortTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@50,@79,@9,@35,@27,@17,@22,@30,@32,@3,@25, nil];
    [ZJJSortTool quickSortWithArray:array withLeftIndex:0 withRightIndex:array.count - 1];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
