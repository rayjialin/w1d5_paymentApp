//
//  AmazonPaymentService.m
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount{
    NSLog(@"Amazon processed amount: $%li", paymentAmount);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(1) + 0;
}

@end
