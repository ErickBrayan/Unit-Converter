<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Unit Converter</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<div class="converter-container">
    <h1>Unit Converter</h1>

    <div class="tabs">
        <a href="${pageContext.request.contextPath}/index.jsp">Length</a>
        <a href="${pageContext.request.contextPath}/weight.jsp">Weight</a>
        <a href="${pageContext.request.contextPath}/temperature.jsp" class="active">Temperature</a>
    </div>
    <form action="converterServlet" method="post">
        <input type="hidden" value="temperature" name="type">
        <div class="form-group">
            <label for="temperature">Enter the temperature to convert</label>
            <input type="number" id="temperature" name="measurement" placeholder="" required>
        </div>
        <div class="form-group">
            <label for="from-unit">Unit to Convert from</label>
            <select name="from-unit" id="from-unit">
                <option value="Celsius">Celsius</option>
                <option value="Fahrenheit">Fahrenheit</option>
                <option value="Kelvin">Kelvin</option>
            </select>
        </div>
        <div class="form-group">
            <label for="to-unit">Unit to Convert to</label>
            <select name="to-unit" id="to-unit">
                <option value="Celsius">Celsius</option>
                <option value="Fahrenheit">Fahrenheit</option>
                <option value="Kelvin">Kelvin</option>
            </select>
        </div>
        <button class="convert-button">Convert</button>
    </form>
</div>
</body>
</html>
