#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello world");
        BNRStockHolding *b1 = [[BNRStockHolding alloc] init];
        [b1 setPurchaseSharedPrice:1.2];
        BNRStockHolding *b2 = [[BNRStockHolding alloc] init];
        [b2 setPurchaseSharedPrice:3.4];

        BNRStockHolding *b3 = [[BNRStockHolding alloc] init];
        [b3 setPurchaseSharedPrice:3.4];


        NSLog(@"%p and %p, %p", b1, b2, b3);

        NSArray *arr = @[b1, b2, b3];
        NSLog(@"%p and %p, %p", arr[0], arr[1], arr[2]);

        for (int i = 0; i < [arr count]; i++) {
            NSLog(@"%p", arr[i]);
        }
    }
    return 0;
}
