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
        <a href="${pageContext.request.contextPath}/weight.jsp" class="active">Weight</a>
        <a href="${pageContext.request.contextPath}/temperature.jsp">Temperature</a>
    </div>
    <form action="converterServlet" method="post">
        <input type="hidden" value="weight" name="type">
        <div class="form-group">
            <label for="weight">Enter the wight to convert</label>
            <input type="number" id="weight" name="measurement" placeholder="" required>
        </div>
        <div class="form-group">
            <label for="from-unit">Unit to Convert from</label>
            <select name="from-unit" id="from-unit">
                <option value="Milligram">Milligram</option>
                <option value="Gram">Gram</option>
                <option value="Kilogram">Kilogram</option>
                <option value="Ounce">Ounce</option>
                <option value="Pound">Pound</option>
            </select>
        </div>
        <div class="form-group">
            <label for="to-unit">Unit to Convert to</label>
            <select name="to-unit" id="to-unit">
                <option value="Milligram">Milligram</option>
                <option value="Gram">Gram</option>
                <option value="Kilogram">Kilogram</option>
                <option value="Ounce">Ounce</option>
                <option value="Pound">Pound</option>
            </select>
        </div>
        <button class="convert-button">Convert</button>
    </form>
</div>
</body>
</html>
