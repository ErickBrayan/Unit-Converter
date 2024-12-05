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
    <a href="${pageContext.request.contextPath}/index.jsp" class="active">Length</a>
    <a href="${pageContext.request.contextPath}/weight.jsp">Weight</a>
    <a href="${pageContext.request.contextPath}/temperature.jsp">Temperature</a>
  </div>
  <form action="converterServlet" method="post">
    <input type="hidden" value="length" name="type">
    <div class="form-group">
      <label for="length">Enter the length to convert</label>
      <input type="number" step="0.0001" id="length" name="measurement" placeholder="" required>
    </div>
    <div class="form-group">
      <label for="from-unit">Unit to Convert from</label>
      <select name="from-unit" id="from-unit">
        <option value="Millimeter">Millimeter</option>
        <option value="Centimeter">Centimeter</option>
        <option value="Meter">Meter</option>
        <option value="Kilometer">Kilometer</option>
        <option value="Inch">Inch</option>
        <option value="Foot">Foot</option>
        <option value="Yard">Yard</option>
        <option value="Mile">Mile</option>
      </select>
    </div>
    <div class="form-group">
      <label for="to-unit">Unit to Convert to</label>
      <select name="to-unit" id="to-unit">
        <option value="Millimeter">Millimeter</option>
        <option value="Centimeter">Centimeter</option>
        <option value="Meter">Meter</option>
        <option value="Kilometer">Kilometer</option>
        <option value="Inch">Inch</option>
        <option value="Foot">Foot</option>
        <option value="Yard">Yard</option>
        <option value="Mile">Mile</option>
      </select>
    </div>
    <button class="convert-button">Convert</button>
  </form>
</div>
</body>
</html>
