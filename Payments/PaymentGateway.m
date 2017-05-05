//
//  PaymentGateway.m
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)paymentAmount {
    
    if ([self.paymentDelegate canProcessPayment]) {
       [self.paymentDelegate processPaymentAmount:paymentAmount];
    } else {
        NSLog(@"Sorry, we are unable to process your payment at this time.\nPlease try again soon or choose a different service to process your payment");
    }
    
    
}

@end
