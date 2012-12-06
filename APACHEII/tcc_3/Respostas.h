#import <Foundation/Foundation.h>
#import "Manager.h"


@interface Respostas : UITableViewController {
    NSArray *labels, *valores;
    NSIndexPath *lastIndex;
    
    SEL selector;
    id target;    
}
                                              
@property (nonatomic, retain) NSArray *labels;
@property (nonatomic, retain) NSArray *valores;
@property (nonatomic, retain) NSIndexPath *lastIndex;

@property (nonatomic) SEL selector;
@property (nonatomic, retain) id target;

@end
