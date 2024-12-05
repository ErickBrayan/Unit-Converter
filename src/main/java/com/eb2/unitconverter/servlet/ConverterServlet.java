package com.eb2.unitconverter.servlet;

import com.eb2.unitconverter.service.ConverterService;
import com.eb2.unitconverter.util.Abbreviation;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.DecimalFormat;

@WebServlet(name = "converterServlet", urlPatterns = {"/converterServlet"})
public class ConverterServlet extends HttpServlet {

    //todo: NumberFormatException Exception


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ConverterService converterService = new ConverterService();
        DecimalFormat df = new DecimalFormat("#.########");

        double measurement = Double.parseDouble(req.getParameter("measurement"));
        String fromUnit = req.getParameter("from-unit");
        String toUnit = req.getParameter("to-unit");
        String type = req.getParameter("type");

        int temperatureConversion = 0;

        String fromAbbreviation = Abbreviation.getAbbreviation(fromUnit);
        String toAbbreviation = Abbreviation.getAbbreviation(toUnit);



        if (type.equalsIgnoreCase("temperature")){
            temperatureConversion = (int) converterService.convert(fromUnit, toUnit, measurement, type);
        }

        double conversion = converterService.convert(fromUnit, toUnit, measurement, type);
        String formatConversion = df.format(conversion);


        req.setAttribute("fromAbbreviation", fromAbbreviation);
        req.setAttribute("toAbbreviation", toAbbreviation);
        req.setAttribute("conversion", formatConversion);
        req.setAttribute("temperatureConversion", temperatureConversion);
        req.setAttribute("type", type);
        req.setAttribute("measurement", measurement);
        req.setAttribute("fromUnit", fromUnit);
        req.setAttribute("toUnit", toUnit);

        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
