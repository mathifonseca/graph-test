package com.example.payment;

public class StripeGateway implements Gateway {

    public Payment process(Payment payment) {
        payment.setProcessed(DateUtil.currentDate());
        payment.setReference(StringUtil.random());
        return payment;
    }

}
