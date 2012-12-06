#import "Respostas.h"

@implementation Respostas

@synthesize labels, valores;
@synthesize selector, target;

@synthesize lastIndex;

- (void)viewDidLoad {
    [super viewDidLoad]; 
}

- (void)viewDidUnload { 
    self.valores = nil;
    [super viewDidUnload]; 
}
- (void)dealloc { 
    [valores release];
    [super dealloc]; 
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [valores count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    static NSString * kCellRespostas = @"kCellRespostas";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: kCellRespostas];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
				 initWithStyle:UITableViewCellStyleDefault
				 reuseIdentifier: kCellRespostas] autorelease];
    }
    
    NSUInteger row = [indexPath row];
    NSString *rowString = [labels objectAtIndex:row];
    cell.textLabel.text = rowString;
    
    NSUInteger oldRow = [lastIndex row];    
    cell.accessoryType = (row == oldRow && lastIndex != nil) ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;    
    
    [rowString release];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Manager *manager = [Manager instancia];
    
    NSInteger valorAtual = [[valores objectAtIndex:[indexPath row]] integerValue];
    NSInteger valorAntigo = 0;
    
    NSInteger lastRow = [lastIndex row];
    if(lastIndex != nil && lastRow > -1)
        valorAntigo = [[valores objectAtIndex:[lastIndex row]] integerValue];            
    
    
    int newRow = [indexPath row];
    int oldRow = (lastIndex != nil) ? [lastIndex row] : -1;
	
    if (newRow != oldRow) {
        
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath: indexPath];
        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		
        UITableViewCell *oldCell = [tableView cellForRowAtIndexPath: lastIndex];
        oldCell.accessoryType = UITableViewCellAccessoryNone;
        lastIndex = indexPath;
        
        manager.score = manager.score - valorAntigo;               
        manager.score = manager.score + valorAtual;  
    }
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    [target performSelector:selector withObject:[labels objectAtIndex:newRow ]];    
}

@end
