//
//  PaymentGateway.h
//  Payments
//
//  Created by Marc Maguire on 2017-05-05.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentProtocol <NSObject>

- (void)processPaymentAmount:(NSInteger)paymentAmount;
- (BOOL)canProcessPayment;



@end

@interface PaymentGateway : NSObject


@property (nonatomic, weak) id <PaymentProtocol> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)paymentAmount;


@end
