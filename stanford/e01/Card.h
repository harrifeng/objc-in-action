#import <Foundation/Foundation.h>

@interface Card : NSObject

// strong means keep the memory pointed by the pointer
// as long as there are any strong pointer point the memory
@property (strong, nonatomic) NSString *contents;

// primitive type No heap memory for them, so no strong needed
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(Card *) card;
@end
