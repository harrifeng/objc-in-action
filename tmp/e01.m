#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];

        // empty mutable array
        NSMutableArray *dateList = [NSMutableArray array];

        [dateList addObject:now];
        [dateList addObject:tomorrow];

        // Add yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];

        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }

        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// <===================OUTPUT===================>                                                //
// 2015-11-17 00:12:00.235 e01.exe[52467:266497] Here is a date: 2015-11-16 08:12:00 +0000       //
// 2015-11-17 00:12:00.235 e01.exe[52467:266497] Here is a date: 2015-11-17 08:12:00 +0000       //
// 2015-11-17 00:12:00.235 e01.exe[52467:266497] Here is a date: 2015-11-18 08:12:00 +0000       //
// 2015-11-17 00:12:00.235 e01.exe[52467:266497] Now the first date is 2015-11-17 08:12:00 +0000 //
///////////////////////////////////////////////////////////////////////////////////////////////////
