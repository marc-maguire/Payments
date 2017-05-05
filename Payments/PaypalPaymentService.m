//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount {
    
    NSLog(@"Payment of: $%lu processed by Paypal!",paymentAmount);
    
}

-(BOOL)canProcessPayment {
    
    NSInteger randomValue = arc4random_uniform(2);
    
    return randomValue ? YES : NO;
    
}

@end
