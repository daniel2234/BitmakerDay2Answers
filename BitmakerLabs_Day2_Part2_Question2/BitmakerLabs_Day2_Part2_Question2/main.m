//
//  main.m
//  BitmakerLabs_Day2_Part2_Question2
//
//  Created by Daniel Kwiatkowski on 2015-04-07.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Write a program that subtracts the value 15 from 87 and displays the result, together with an appropriate message.
        int i;
        int l;
        l = 87;
        i = 15;
        NSLog(@"The number %d subtracted from %d is %d", l, i, l-i);
    }
    return 0;
}
