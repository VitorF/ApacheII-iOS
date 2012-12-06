//
//  ItemsControl.m
//  ex02
//
//  Created by Vitor Furlanetti Rocha on 8/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ItemsControl.h"
#import "Respostas.h"

@implementation ItemsControl
@synthesize controllers;
@synthesize indexSelecionado;

-(void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidUnload {
	self.controllers = nil;
	[super viewDidUnload];
}

- (void)dealloc {
	[controllers release];
	[super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.controllers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    static NSString *FirstLevelCell= @"FirstLevelCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: FirstLevelCell];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
				 initWithStyle:UITableViewCellStyleValue1
				 reuseIdentifier: FirstLevelCell] autorelease];
    }
    // Configurar a celula
    NSUInteger row = [indexPath row];
    Respostas *r = [controllers objectAtIndex:row];
    cell.textLabel.text = r.title;
    cell.detailTextLabel.textColor = [UIColor lightGrayColor];
    
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    Respostas *nextController = [self.controllers objectAtIndex:row];
    
    nextController.target = self;
    nextController.selector = @selector(SetaDetalhe:);
    
    [self.navigationController pushViewController:nextController animated:YES];
    indexSelecionado = indexPath;
}


-(void)SetaDetalhe:(NSString *)texto {
    UITableViewCell *cel = [self.tableView cellForRowAtIndexPath:indexSelecionado];
    cel.detailTextLabel.text = texto;
}

@end
