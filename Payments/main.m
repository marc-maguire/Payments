//
//  main.m
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

//The Goal
//To create a command line app called Payments that models an on-line payment module
//The app will generate a random dollar value that simulates an online purchase and will display this to the user
//The user will be asked to select from 3 payment methods: Paypal, Stripe or Amazon
//Once they select a payment method the app processes the amount using the selected method
//We will use delegation to accomplish this


#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSInteger randomNumber = arc4random_uniform(900)+100;
        NSLog(@"\nThank you for shopping at Acme.com\nYour total today is $%lu\nPlease select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon",randomNumber);
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSInteger parsedConvertedInteger = [[result stringByTrimmingCharactersInSet:charSet]integerValue];
        int intValue = (int)parsedConvertedInteger;
  
        
        //NSLog(@"Input int: %d",inputInt);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        
        id <PaymentProtocol> delegate; 
       
        switch (intValue) {
                
            case 1:
                delegate = [[PaypalPaymentService alloc]init];
                break;
            
            case 2:
                delegate = [[StripePaymentService alloc]init];
                break;
            case 3:
                delegate = [[AmazonPaymentService alloc]init];
                break;
                
            default:
                break;
        }
     
        paymentGateway.paymentDelegate = delegate;
        [paymentGateway processPaymentAmount:parsedConvertedInteger];
        
        
        
        
    }
    return 0;
}
