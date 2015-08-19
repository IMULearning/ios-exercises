//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return @(number.intValue * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger low = number, high = otherNumber;
    
    if (low > high) {
        NSInteger temp = low;
        low = high;
        high = temp;
    }
    
    NSMutableArray *array = [@[] mutableCopy];
    for (NSInteger i = low; i <= high; i++) {
        [array addObject: [NSNumber numberWithInteger:i]];
    }
    
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSArray *sorted = [arrayOfNumbers sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
    return [(NSNumber *) [sorted firstObject] integerValue];
}

@end
