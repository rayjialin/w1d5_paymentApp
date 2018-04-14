//
//  ApplePaymentService.m
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount{
    NSLog(@"Apple processed amount: $%li", paymentAmount);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(1) + 0;
}
@end
