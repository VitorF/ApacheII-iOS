//
//  Resultado.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Resultado.h"

@implementation Resultado

@synthesize lblResultado;

-(void)viewWillAppear:(BOOL)animated {
    Manager *manager = [Manager instancia];
    NSString *msg = [[NSString alloc] initWithFormat:@"%d", manager.score];
    [lblResultado setText:msg];
    [msg release];
}

@end
