//
//  Admissao.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Admissao.h"

@implementation Admissao


-(void)viewDidLoad {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    Temperatura *t = [[Temperatura alloc] initWithStyle:UITableViewStyleGrouped];
    t.title = @"Temperatura Retal (ºC)";
    [array addObject:t];
    [t release];    
    
    Pressao *p = [[Pressao alloc] initWithStyle:UITableViewStyleGrouped];
    p.title = @"Pressão Arterial (mmHg)";
    [array addObject:p];
    [p release];
    
    Frequencia *f = [[Frequencia alloc] initWithStyle:UITableViewStyleGrouped];
    f.title = @"Frequencia Cardíaca (bpm)";
    [array addObject:f];
    [f release];

    Oxigenacao *o = [[Oxigenacao alloc] initWithStyle:UITableViewStyleGrouped];
    o.title = @"Oxigenação";
    [array addObject:o];
    [o release];
    
    Glasgow *g = [[Glasgow alloc] initWithStyle:UITableViewStyleGrouped];
    g.title = @"Escala Glasgow";
    [array addObject:g];
    [g release];
     
    
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}



@end