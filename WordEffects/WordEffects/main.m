//
//  main.m
//  WordEffects
//
//  Created by Darah on 2015-08-04.
//  Copyright (c) 2015 Darah Joseph. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // print NSString object
    NSLog(@"Input was: %@", inputString);
    
    
//    NSLog(@"1.Uppercase, 2.Lowercase, 3.Numberize, 4.Canadianize, 5.Respond, 6.De-Space-It");
    char inputOperation[2];
    printf("Select an operation: ");
    fgets(inputOperation, 2, stdin);
    printf("Your operation is %s\n", inputOperation);
    NSString *selectOperation = [NSString stringWithUTF8String:inputOperation];
    NSInteger operationInt = [selectOperation integerValue];
    NSLog(@"Input was: %s", inputOperation);
    
    //1. Uppercase
    if (operationInt == 1) {
        NSLog(@"Input was: %@",[inputString uppercaseString]);
    }
    
    // 2. Lowercase
    else if (operationInt == 2) {
        NSLog(@"Input was: %@",[inputString lowercaseString]);
    }
    
    //3. Numberize
    else if (operationInt == 3){
        NSUInteger numberString = [inputString length];
        NSLog(@"%lu", (unsigned long)numberString);
    }

    //4. Canadianize
    else if (operationInt == 4) {
        NSLog(@"Input was: %@, eh", inputString);
    }
    
    //5. Respond
    else if (operationInt == 5) {
        if ([inputString hasSuffix:@"?"]) {
            NSLog(@"I don't know");
        }
        else if ([inputString hasSuffix:@"!"]) {
            NSLog(@"Whoa, calm down!");
        }
    }

    //6. De-Space-It
    else if (operationInt == 6) {
            NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
        }
    
    
    
    
    return 0;
}
