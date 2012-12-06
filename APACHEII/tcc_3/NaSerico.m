//
//  NaSerico.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NaSerico.h"

@implementation NaSerico

- (void)viewDidLoad {
    self.title = @"Na+ Sérico (mEq/l)";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"180", 
                      @"160 a 179", 
                      @"155 a 159", 
                      @"150 a 154", 
                      @"130 a 149", 
                      @"120 a 129", 
                      @"111 a 119",
                      @"110",
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:2],
                     [NSNumber numberWithInteger:1], 
                     [NSNumber numberWithInteger:0],
                     [NSNumber numberWithInteger:2],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:4], 
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
