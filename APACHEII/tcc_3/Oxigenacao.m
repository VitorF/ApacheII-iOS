//
//  Frequencia.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Oxigenacao.h"

@implementation Oxigenacao

- (void)viewDidLoad {
    self.title = @"Oxigenação";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @">500", 
                      @"350 a 499", 
                      @"200 a 340", 
                      @"<200 ou PaO2 > 70", 
                      @"PaO2 61 a 70", 
                      @"PaO2 55 a 60", 
                      @"PaO2 < 55",
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:2],
                     [NSNumber numberWithInteger:0], 
                     [NSNumber numberWithInteger:1],
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
