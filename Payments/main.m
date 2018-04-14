//
//  main.m
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char input[1];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        StripePaymentService *stripePaymentService;
        AmazonPaymentService *amazonPaymentService;
        PaypalPaymentService *paypalPaymentService;
        ApplePaymentService *applePaymentService;
        
        NSInteger total = arc4random_uniform(1000) + 100;
        NSLog(@"\nThank you for shopping at Acme.com Your total today is $%li\nPlease select your payment method:\n\t1. Paypal\n\t2. Stripe\n\t3. Amazon\n\t4. Apple", total);
        fgets(input, 1, stdin);
        NSInteger paymentOption = [[[NSString alloc] initWithUTF8String:input] integerValue];
//        [paymentGateway processPaymentAmount:total];
        
        switch (paymentOption) {
            case 1:
                paypalPaymentService = [PaypalPaymentService new];
                paymentGateway.paymentDelegate = paypalPaymentService;
                [paymentGateway processPaymentAmount:total];
                break;
            case 2:
                stripePaymentService = [StripePaymentService new];
                paymentGateway.paymentDelegate = stripePaymentService;
                [paymentGateway processPaymentAmount:total];
                break;
            case 3:
                amazonPaymentService = [AmazonPaymentService new];
                paymentGateway.paymentDelegate = amazonPaymentService;
                [paymentGateway processPaymentAmount:total];
                break;
            case 4:
                applePaymentService = [ApplePaymentService new];
                paymentGateway.paymentDelegate = applePaymentService;
                [paymentGateway processPaymentAmount:total];
                break;
            default:
                break;
        }
        
    }
    return 0;
}
