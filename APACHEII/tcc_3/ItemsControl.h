//
//  ItemsControl.h
//  ex02
//
//  Created by Vitor Furlanetti Rocha on 8/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemsControl : UITableViewController {
    NSArray *controllers;
    NSIndexPath *indexSelecionado;
}

@property (nonatomic, retain) NSArray *controllers;
@property (nonatomic, retain) NSIndexPath *indexSelecionado;

@end
