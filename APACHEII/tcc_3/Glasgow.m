//
//  Glasgow.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Glasgow.h"

@implementation Glasgow

- (void)viewDidLoad {
    self.title = @"Escala Glasgow";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"3", 
                      @"4", 
                      @"5", 
                      @"6", 
                      @"7", 
                      @"8", 
                      @"9",
                      @"10", 
                      @"11", 
                      @"12", 
                      @"13", 
                      @"14", 
                      @"15", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:3],
                     [NSNumber numberWithInteger:4], 
                     [NSNumber numberWithInteger:5],
                     [NSNumber numberWithInteger:6], 
                     [NSNumber numberWithInteger:7],
                     [NSNumber numberWithInteger:8],                     
                     [NSNumber numberWithInteger:9], 
                     [NSNumber numberWithInteger:10], 
                     [NSNumber numberWithInteger:11],
                     [NSNumber numberWithInteger:12],                     
                     [NSNumber numberWithInteger:13], 
                     [NSNumber numberWithInteger:14], 
                     [NSNumber numberWithInteger:15],
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
