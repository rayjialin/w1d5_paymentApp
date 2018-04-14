//
//  PaypalPaymentService.m
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount{
    NSLog(@"Paypal processed amount: $%li", paymentAmount);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2) + 0;
}

@end
