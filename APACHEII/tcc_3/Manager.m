//
//  Manager.m
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Manager.h"

static Manager *instanciaCompartilhada = nil;

@implementation Manager

@synthesize score;

+(id)instancia {
    @synchronized(self) {
        if(instanciaCompartilhada == nil)
            instanciaCompartilhada = [[super allocWithZone:NULL] init];
    }
    return instanciaCompartilhada;
}

+(id)allocWithZone:(NSZone *)zone {
    return [[self instancia] retain];
}

-(id)copyWithZone:(NSZone *)zone {
    return self;
}

-(id)retain {
    return self;
}

-(unsigned)retainCount {
    return UINT_MAX;
}

+(void)release {
    //nunca da release
}

-(id)autorelease {
    return self;
}

- (id)init
{
    if (self = [super init]) {
        score = 0;
    }
    
    return self;
}

-(void)dealloc {
    [super dealloc];
}

@end
