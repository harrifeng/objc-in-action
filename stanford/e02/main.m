#import <Foundation/Foundation.h>
#import "Card.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        Card *card1 = [[Card alloc] init];
        card1.contents = @"Hello WOrld";

        Card *card2 = [[Card alloc] init];
        card2.contents = @"Hello World";

        NSLog(@"Content is %@", card1.contents);
        NSLog(@"Content is %@", card2.contents);

        NSLog(@"There are equal => %d", [card1 match:card2]);
    }
    return 0;
}
