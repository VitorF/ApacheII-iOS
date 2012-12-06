//
//  Creatinina.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Creatinina.h"

@implementation Creatinina

- (void)viewDidLoad {
    self.title = @"Creatinina";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"3,5", 
                      @"2 a 3,4", 
                      @"1,5 a 1,9", 
                      @"0,6 a 1,4", 
                      @"< 0,6", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:2],
                     [NSNumber numberWithInteger:0], 
                     [NSNumber numberWithInteger:2],
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
