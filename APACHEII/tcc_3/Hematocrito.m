//
//  Hematocrito.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Hematocrito.h"

@implementation Hematocrito

- (void)viewDidLoad {
    self.title = @"Hematócrito";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"60", 
                      @"50 a 59,9", 
                      @"46 a 49,9", 
                      @"30 a 45,9", 
                      @"20 a 29,9", 
                      @"< 20", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:2], 
                     [NSNumber numberWithInteger:1],
                     [NSNumber numberWithInteger:0], 
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
