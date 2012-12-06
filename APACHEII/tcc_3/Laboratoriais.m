//
//  Laboratoriais.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Laboratoriais.h"

@implementation Laboratoriais

-(void)viewDidLoad {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    PHArterial *p = [[PHArterial alloc] initWithStyle:UITableViewStyleGrouped];
    p.title = @"PH Arterial";
    [array addObject:p];
    [p release];    
    
    NaSerico *n = [[NaSerico alloc] initWithStyle:UITableViewStyleGrouped];
    n.title = @"Na+ Sérico (mEq/l)";
    [array addObject:n];
    [n release];
    
    KSerico *k = [[KSerico alloc] initWithStyle:UITableViewStyleGrouped];
    k.title = @"K+ Sérico (mEq/l)";
    [array addObject:k];
    [k release];
    
    Creatinina *c = [[Creatinina alloc] initWithStyle:UITableViewStyleGrouped];
    c.title = @"Creatinina";
    [array addObject:c];
    [c release];
    
    Hematocrito *h = [[Hematocrito alloc] initWithStyle:UITableViewStyleGrouped];
    h.title = @"Hematócrito";
    [array addObject:h];
    [h release];
    
    Leucocitos *l = [[Leucocitos alloc] initWithStyle:UITableViewStyleGrouped];
    l.title = @"Leucócitos";
    [array addObject:l];
    [l release];

    
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}


@end
