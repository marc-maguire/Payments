//
//  StripePaymentService.h
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentProtocol>


-(void)processPaymentAmount:(NSInteger)paymentAmount;
-(BOOL)canProcessPayment;

@end
