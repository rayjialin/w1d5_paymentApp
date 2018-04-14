//
//  PaymentGateway.h
//  Payments
//
//  Created by ruijia lin on 4/13/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)paymentAmount;
-(BOOL)canProcessPayment;
@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;
-(void)processPaymentAmount:(NSInteger)paymentAmount;

@end
