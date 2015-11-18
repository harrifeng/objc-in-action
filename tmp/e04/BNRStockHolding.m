#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (void)setPurchaseSharedPrice:(float) p
{
    _purchaseSharePrice = p;
}

- (void)setCurrentSharedPrice:(float) c
{
    _currentSharePrice = c;

}

- (float)costInDollars
{
    return 1.0;
}
- (float)valueInDollars
{
    return 2.0;
}
@end
