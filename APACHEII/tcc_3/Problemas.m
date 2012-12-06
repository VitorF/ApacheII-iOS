//
//  Problemas.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Problemas.h"

@implementation Problemas

- (void)viewDidLoad {
    self.title = @"Problemas Crônicos";
    
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"Nenhum", 
                      @"Não-cirúrgico", 
                      @"Cirurgia de emergência", 
                      @"Cirurgia eletiva", 
                      nil];
    NSArray *vals = [[NSArray alloc] initWithObjects:
                     [NSNumber numberWithInteger:0],
                     [NSNumber numberWithInteger:5], 
                     [NSNumber numberWithInteger:5],
                     [NSNumber numberWithInteger:2], 
                     nil];
    
    self.labels = array;   
    self.valores = vals;
    [array release];
    [vals release];
    [super viewDidLoad]; 
}

@end
