package com.example.payment;

public class PaymentProcessor {

    public boolean authorize(Payment payment) {
        return PaymentValidator.validate(payment) && process(payment);
    }

    public boolean refund(Payment payment) {
        return PaymentValidator.validate(payment) && process(payment);
    }

    private boolean process(Payment payment) {
        Payment result;
        switch (payment.getGateway()) {
            case "PayPal":
                result = new PayPalGateway().process(payment);
                break;
            case "Stripe":
                result = new StripeGateway().process(payment);
                break;
            default:
                result = null;
        }
        return result != null;
    }

}
