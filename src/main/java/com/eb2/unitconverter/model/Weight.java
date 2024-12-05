package com.eb2.unitconverter.model;

import java.util.HashMap;
import java.util.Map;

public class Weight {

    private final double valueInGram;
    private static final Map<String, Double> conversionToGrams = new HashMap<>() {{
        put("milligram", 0.001);
        put("gram", 1.0);
        put("kilogram", 1000.0);
        put("ounce", 28.3495);
        put("pound", 453.592);
    }};

    public Weight(String fromWight, double value) {
        this.valueInGram = toGram(fromWight.toLowerCase(), value);
    }

    public double getConversion(String toWight) {
        return gramTo(toWight.toLowerCase(), this.valueInGram);
    }

    private double gramTo(String toWight, double value) {
        return this.valueInGram / conversionToGrams.get(toWight);
    }

    private double toGram(String fromWight, double value) {
        return value * conversionToGrams.get(fromWight);
    }
}
