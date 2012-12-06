//
//  Pressao.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PHArterial.h"
#import "Respostas.h"

@implementation PHArterial

- (void)viewDidLoad {
    self.title = @"PH Arterial";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @">= 7,7", 
                      @"7,6 a 7,69", 
                      @"7,5 a 7,59", 
                      @"7,33 a 7,49", 
                      @"7,25 a 7,32", 
                      @"7,15 a 7,24", 
                      @"< 7,15",
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
