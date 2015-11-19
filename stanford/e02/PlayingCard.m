#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents
{
    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
}
@end
