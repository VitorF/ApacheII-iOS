//
//  Background.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Background.h"


@implementation Background

-(void)viewDidLoad {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    Idade *i = [[Idade alloc] initWithStyle:UITableViewStyleGrouped];
    i.title = @"Idade";
    [array addObject:i];
    [i release];    
    
    Problemas *p = [[Problemas alloc] initWithStyle:UITableViewStyleGrouped];
    p.title = @"Problemas Crônicos";
    [array addObject:p];
    [p release];
    
    
    
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}

@end
