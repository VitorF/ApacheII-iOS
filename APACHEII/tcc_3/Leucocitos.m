//
//  Lecocitos.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Leucocitos.h"

@implementation Leucocitos

- (void)viewDidLoad {
    self.title = @"Leucócitos";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"40", 
                      @"20 a 39,9", 
                      @"15 a 19,9", 
                      @"3 a 14,9", 
                      @"1 a 2,9", 
                      @"< 1", 
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
