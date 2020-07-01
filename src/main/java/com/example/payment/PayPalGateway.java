package com.example.payment;

public class PayPalGateway implements Gateway {

    public Payment process(Payment payment) {
        payment.setProcessed(DateUtil.currentDate());
        return payment;
    }

}
