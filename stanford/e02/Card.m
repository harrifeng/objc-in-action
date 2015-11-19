#import "Card.h"

// Private one
@interface Card()
@end

@implementation Card

// @synthesize contents = _contents;
//
// - (NSString *)contents
// {
//     return _content;
// }
//
// - (void)setContents:(NSString *)contents
// {
//     _contents = contents;
// }

- (int)match:(Card*) card
{
    int score = 0;

    if ([card.contents isEqualToString:self.contents]) {
        score = 1;
    }

    return score;
}
@end
