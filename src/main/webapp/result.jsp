<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Result</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f4f4f9;
    }
    .converter-container {
        width: 300px;
        height: 390px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .converter-container h1 {
        text-align: center;
        font-size: 20px;
        margin-bottom: 20px;
    }
    .tabs {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
    .tabs a {
        text-decoration: none;
        font-size: 16px;
        margin: 0 10px;
        padding: 5px 10px;
        color: black;
        border-bottom: 2px solid transparent;
        transition: color 0.3s, border-bottom 0.3s;
    }
    .tabs a:hover {
        color: blue;
        border-bottom: 2px solid blue;
    }
    .tabs a.active {
        color: blue;
        border-bottom: 2px solid blue;
    }
    .result {
        text-align: start;
        margin-bottom: 20px;
        font-size: 18px;
    }
    .result strong {
        font-size: 30px;
        color: black;
    }
    .reset-button {
        display: block;
        width: 50%;
        padding: 10px;
        font-size: 16px;
        color: white;
        background-color: blue;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
    }
    .reset-button:hover {
        background-color: darkblue;
    }
</style>
<body>

    <%int resTemperature= (int) request.getAttribute("temperatureConversion");%>
    <% String res = (String) request.getAttribute("conversion");%>

    <div class="converter-container">
        <h1>Unit Converter</h1>
        <div class="tabs">
            <%if (request.getAttribute("type").equals("length")) {%>
                <a href="${pageContext.request.contextPath}/index.jsp" class="active">Length</a>
                <a href="${pageContext.request.contextPath}/weight.jsp">Weight</a>
                <a href="${pageContext.request.contextPath}/temperature.jsp">Temperature</a>
            <%} else if (request.getAttribute("type").equals("weight")){%>
                <a href="${pageContext.request.contextPath}/index.jsp">Length</a>
                <a href="${pageContext.request.contextPath}/weight.jsp"  class="active">Weight</a>
                <a href="${pageContext.request.contextPath}/temperature.jsp">Temperature</a>
            <%} else {%>
                <a href="${pageContext.request.contextPath}/index.jsp">Length</a>
                <a href="${pageContext.request.contextPath}/weight.jsp">Weight</a>
                <a href="${pageContext.request.contextPath}/temperature.jsp" class="active">Temperature</a>
            <%}%>
        </div>
        <div class="result">
            <p>Result of your calculation:</p>
            <%if (request.getAttribute("type").equals("temperature")) {%>
                <strong>${measurement}${fromAbbreviation} = <%=resTemperature%>${toAbbreviation}</strong>
            <%} else {%>
                <strong>${measurement}${fromAbbreviation} = <%=res%>${toAbbreviation}</strong>
            <%}%>
    </div>
        <%if (request.getAttribute("type").equals("length")) {%>
            <a href="${pageContext.request.contextPath}/index.jsp" class="reset-button">Reset</a>
        <%} else if (request.getAttribute("type").equals("weight")){%>
            <a href="${pageContext.request.contextPath}/weight.jsp" class="reset-button">Reset</a>
        <%} else {%>
            <a href="${pageContext.request.contextPath}/temperature.jsp" class="reset-button">Reset</a>
        <%}%>
    </div>

</body>
</html>
