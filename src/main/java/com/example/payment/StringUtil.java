package com.example.payment;

import java.util.UUID;

public class StringUtil {

    private StringUtil() {}

    public static String random() {
        return UUID.randomUUID().toString();
    }

}
