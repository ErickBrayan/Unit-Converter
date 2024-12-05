package com.eb2.unitconverter.model;

public class Temperature {

    public final double valueInCelsius;

    public Temperature(String fromUnit, double value) {
        this.valueInCelsius = toCelsius(fromUnit, value);
    }

    public double getConversion(String toUnit) {
        return celsiusTo(toUnit, this.valueInCelsius);
    }

    private double celsiusTo(String toUnit, double value) {
        return switch (toUnit.toLowerCase()) {
            case "celsius" -> value;
            case "fahrenheit" -> (value * 9 / 5) + 32;
            case "kelvin" -> value + 273.15;
            default -> 0.0;
        };
    }

    private double toCelsius(String fromUnit, double value) {
        return switch (fromUnit.toLowerCase()) {
            case "celsius" -> value;
            case "fahrenheit" -> (value - 32) * 5 / 9;
            case "kelvin" -> value - 273.15;
            default -> 0.0;
        };
    }
}
