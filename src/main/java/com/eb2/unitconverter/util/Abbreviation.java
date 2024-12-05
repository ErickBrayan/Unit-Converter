package com.eb2.unitconverter.util;

import java.util.HashMap;
import java.util.Map;

public class Abbreviation {

    public static String getAbbreviation(String word) {

        Map<String, String> abbreviations = new HashMap<>();

        abbreviations.put("millimeter", "mm");
        abbreviations.put("centimeter", "cm");
        abbreviations.put("meter", "m");
        abbreviations.put("kilometer", "km");
        abbreviations.put("inch", "in");
        abbreviations.put("foot", "ft");
        abbreviations.put("yard", "yd");
        abbreviations.put("mile", "mi");
        abbreviations.put("milligram", "mg");
        abbreviations.put("gram", "g");
        abbreviations.put("kilogram", "kg");
        abbreviations.put("ounce", "oz");
        abbreviations.put("pound", "lbs");
        abbreviations.put("kelvin", "K");
        abbreviations.put("celsius", "°C");
        abbreviations.put("fahrenheit", "°F");

        return abbreviations.get(word.toLowerCase());
    }
}
