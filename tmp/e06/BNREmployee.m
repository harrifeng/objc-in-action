#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create an instance of BNREmployee
        BNRPerson *mikey = [[BNREmployee alloc] init];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;

        NSLog(@"mikey has a weight of %d", mikey.weightInKilos);
        NSLog(@"mikey has a height of %f", mikey.heightInMeters);
    }
    return 0;
}
