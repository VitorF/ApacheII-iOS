//
//  Manager.h
//  tcc_3
//
//  Created by Vitor Furlanetti Rocha on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject {
    NSInteger score;
}

@property (nonatomic) NSInteger score;

+(id)instancia;

@end
