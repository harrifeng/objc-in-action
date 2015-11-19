#import "BNRPerson.h"
@implementation BNRPerson
- (float)bodyMassIndex
{
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}
@end
