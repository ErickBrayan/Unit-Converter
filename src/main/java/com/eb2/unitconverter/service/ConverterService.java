package com.eb2.unitconverter.service;

import com.eb2.unitconverter.model.Length;
import com.eb2.unitconverter.model.Temperature;
import com.eb2.unitconverter.model.Weight;

public class ConverterService {

    public double convert(String from, String to, double value, String type) throws NumberFormatException {
        if (from == null || to == null || value == 0) return 0;

        if (from.equalsIgnoreCase(to)) return value;

        if (type.equalsIgnoreCase("length")) {
            return new Length(from, value).getConversion(to);
        } else if (type.equalsIgnoreCase("weight")) {
            return new Weight(from, value).getConversion(to);
        } else {
            return new Temperature(from, value).getConversion(to);
        }
    }
}
