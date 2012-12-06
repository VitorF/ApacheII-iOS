//
//  Idade.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Idade.h"

@implementation Idade

- (void)viewDidLoad {
    self.title = @"Idade";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"<= 44", 
                      @"45 a 54", 
                      @"55 a 64", 
                      @"65 a 74", 
                      @">= 75", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:0],
                     [NSNumber numberWithInteger:2], 
                     [NSNumber numberWithInteger:3],
                     [NSNumber numberWithInteger:5], 
                     [NSNumber numberWithInteger:6],
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
