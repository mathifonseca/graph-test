package com.example.payment;

public interface Gateway {
    Payment process(Payment payment);
}
