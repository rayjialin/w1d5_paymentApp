//
//  PaymentGateway.m
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)paymentOption{
    
    if ([self.paymentDelegate canProcessPayment]){
    [self.paymentDelegate processPaymentAmount:paymentOption];
    }else {
        NSLog(@"Sorry, your payment method is not accepted.");
    }
}

@end
