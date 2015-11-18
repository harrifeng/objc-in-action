#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
}
- (void)setCurrentSharedPrice:(float) c;
- (void)setPurchaseSharedPrice:(float) p;
- (float)costInDollars;
- (float)valueInDollars;
@end
