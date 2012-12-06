//
//  Frequencia.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Frequencia.h"

@implementation Frequencia

- (void)viewDidLoad {
    self.title = @"Frequencia Cardíaca";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"180", 
                      @"140 a 179", 
                      @"110 a 139", 
                      @"70 a 109", 
                      @"55 a 69", 
                      @"40 a 54", 
                      @"39",
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:2],
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
