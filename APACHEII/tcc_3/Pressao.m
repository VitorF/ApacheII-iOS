//
//  Pressao.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Pressao.h"
#import "Respostas.h"

@implementation Pressao

- (void)viewDidLoad {
    self.title = @"Pressão Arterial";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @">= 160", 
                      @"130 a 159", 
                      @"110 a 129", 
                      @"70 a 109", 
                      @"50 a 69", 
                      @"<= 49", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:2],
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
