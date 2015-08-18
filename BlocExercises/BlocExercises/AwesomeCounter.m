//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSString *result = @"";
    NSInteger low = number;
    NSInteger high = otherNumber;
    
    if (low > high) {
        NSInteger temp;
        temp = low;
        low = high;
        high = temp;
    }
    
    for (NSInteger i = low; i <= high; i++) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%ld", i]];
    }
    
    return result;
}

@end
