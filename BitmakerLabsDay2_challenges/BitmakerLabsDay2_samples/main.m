//
//  main.m
//  BitmakerLabsDay2_samples
//
//  Created by Daniel Kwiatkowski on 2015-04-07.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.14159
#define RAD_TO_DEG(radians)(radians * (180.0/PI))

        //typedef lets you create you new data types or redefine existing ones
        typedef unsigned char ColorComponent;

        //structs
        typedef struct {
            unsigned char red;
            unsigned char green;
            unsigned char blue;
        } Color;

        typedef enum {
            FORD,
            HONDA,
            NISSAN,
            PORSCHE
          } CarModel;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //typedef lets you create you new data types or redefine existing ones
        typedef unsigned char ColorComponent;
        

        //constants
        double odometer = 9200.8;
        int odometerAsInteger = (int)odometer;
        
        NSLog(@"You've driven %.1f miles", odometer);
        NSLog(@"You've driven %d miles", odometerAsInteger);
        //arithmetic
        NSLog(@"6 + 2 = %d", 6 + 2); //8
        NSLog(@"6 - 2 = %d", 6 - 2);
        NSLog(@"6 * 2 = %d", 6 * 2);
        NSLog(@"6 / 2 = %d", 6 / 2);
        NSLog(@"6 %% 2 = %d", 6 % 2);
        int i = 0;
        NSLog(@"%d", i);
        i++;
        NSLog(@"%d", i);
        i++;
        NSLog(@"%d", i);
        
        //conditionals
        int modelYear = 1990;
        if (modelYear < 1967){
            NSLog(@"That car is an antique!!!");
        } else if (modelYear <= 1991){
            NSLog(@"Thats car is a classic!");
        }else if (modelYear == 2013){
            NSLog(@"Thats a brand new car!");
        }else{
            NSLog(@"There's nothing special about that car.");
        }
        
        //OPERATOR DESCRIPTION
        switch (modelYear) {
            case 1987:
                NSLog(@"Your car is from 1987.");
                break;
            case 1988:
                NSLog(@"Your car is from 1988.");
            case 1989:
                NSLog(@"Your car is from 1989.");
            case 1990:
                NSLog(@"Your car is from 1990.");
            default:
                NSLog(@"I have no idea when your car was made.");
                break;
        }
        
//        //Loops(while loops)
//        int modelYearNow = 1990;
//        int i_Now = 0;
        
//        while (i_Now < 5) {
//            if (i_Now == 3) {
//                NSLog(@"Aborting the while-loop");
//                break;
//            }
//            NSLog(@"Current Year: %d", modelYearNow + i_Now);
//            i++;
//        }
        
        // for-loops
//        for (int i_Now = 0; i < 5; i++) {
//            if (i_Now == 3){
//                NSLog(@"Skipping a for-loop iteration");
//                continue;
//            }
//            NSLog(@"Current Year: %d", modelYearNow + i_Now);
//        }
        
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models){
            NSLog(@"%@", model);
        }
        //learned macros
        double angle = PI / 2;
        NSLog(@"%f", angle); //1.570795
        NSLog(@"%f", RAD_TO_DEG(angle));//90.00
        
        //typedef continuation
        ColorComponent red = 255;
        ColorComponent green = 160;
        ColorComponent blue = 0;
        NSLog(@"Your paint job is (R: %hhu, G:%hhu, B:%hhu)", red, green, blue);
        
        //structs
        Color carColor = {255, 160, 0};
        NSLog(@"Your paint job is (R: %hhu, G:%hhu, B:%hhu)", carColor.red, carColor.green, carColor.blue);
        
        CarModel MyCar = NISSAN;
        switch (MyCar) {
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars?");
                break;
            case HONDA:
            case NISSAN:
                NSLog(@"You like Japanese cars?");
                break;
            default:
                break;
        }
        
        //primitive arrays
        int years[4] = {1968, 1970, 1989, 1999};
        years[0] = 1967;
        for (int i = 0; i<4; i++) {
            NSLog(@"The year at index %d is: %d", i, years[i]);
        }
        
        //pointers
        int year = 1967;//defien a normal variable
        int *pointer;//declare a pointer that points to an int
        pointer = &year;//find the memory address to get its value
        NSLog(@"%d", *pointer);//deference the address to get its value
        *pointer = 1990; //assign a new value to the memory address
        NSLog(@"this is the end %d", year);//access the value via variable
        
        char model[5] = {'H', 'o', 'n', 'd', 'a'};
        char *modelPointer = &model[0];
        for (int i = 0; i <5; i++) {
            NSLog(@"Value at memory address %p is %c", modelPointer, *modelPointer);
            modelPointer++;
        }
        NSLog(@"The first letter is %c", *(modelPointer - 5));
        
        //null pointer
        int year1 = 1967;
        int *pointer1 = &year1;
        NSLog(@"%d", *pointer1);
        pointer1 = NULL;
        
        //void pointer
        int year2 = 1967;
        void *genericPointer = &year2;
        int *intPointer = (int *)genericPointer;
        NSLog(@"%d", *intPointer);
        
        //2nd question
        NSLog(@"This is my second day at Bitmaker Labs");
    }
    return 0;
    
    
}
