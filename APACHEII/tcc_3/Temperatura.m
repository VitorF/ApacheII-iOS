//
//  Temperatura.m
//  ex02
//
//  Created by Vitor Furlanetti Rocha on 8/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Temperatura.h"

@implementation Temperatura

- (void)viewDidLoad {
    self.title = @"Temperatura Retal (ºC)";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @">= 41", 
                      @"39 a 40,9", 
                      @"38,5 a 38,9", 
                      @"36 a 38,4", 
                      @"34 a 35,9", 
                      @"32 a 33,9", 
                      @"30 a 31,9", 
                      @"<= 29,9", 
                    nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:4],
                     [NSNumber numberWithInteger:3], 
                     [NSNumber numberWithInteger:1],
                     [NSNumber numberWithInteger:0], 
                     [NSNumber numberWithInteger:1],
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
