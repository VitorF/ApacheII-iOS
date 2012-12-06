//
//  KSerico.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KSerico.h"

@implementation KSerico

- (void)viewDidLoad {
    self.title = @"K+ Sérico (mEq/l)";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"7", 
                      @"6 a 6,9", 
                      @"5,5 a 5,9", 
                      @"3,5 a 5,4", 
                      @"3 a 3,4", 
                      @"2,5 a 2,9", 
                      @"2,5",
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:1],
                     [NSNumber numberWithInteger:0], 
                     [NSNumber numberWithInteger:1],
                     [NSNumber numberWithInteger:2],
                     [NSNumber numberWithInteger:4], 
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
