package com.eb2.unitconverter.model;

import java.util.HashMap;
import java.util.Map;

public class Length {

    private final double valueInMeter;

    private static final Map<String, Double> conversionToMeters = new HashMap<>() {{
        put("millimeter", 0.001);
        put("centimeter", 0.01);
        put("meter", 1.0);
        put("kilometer", 1000.0);
        put("inch", 0.0254);
        put("foot", 0.3048);
        put("yard", 0.9144);
        put("mile", 1609.34);
    }};

    public Length(String fromUnit, double value) {
        this.valueInMeter = toMeter(fromUnit.toLowerCase(), value);
    }

    public double getConversion(String toUnit) {
        return meterTo(toUnit.toLowerCase(), this.valueInMeter);
    }

    private double meterTo(String toUnit, double value) {
        return value / conversionToMeters.get(toUnit);
    }

    private double toMeter(String fromUnit, double value) {
        return value * conversionToMeters.get(fromUnit);
    }

}
