#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
}

- (float)costInDollars;
- (float)valueInDollars;
@end
