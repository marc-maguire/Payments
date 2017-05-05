//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount {
    
    NSLog(@"Payment of: $%lu processed by Amazon!",paymentAmount);
    
}

-(BOOL)canProcessPayment {
    
    NSInteger randomValue = arc4random_uniform(2);

    return randomValue ? YES : NO;
    
}

@end
