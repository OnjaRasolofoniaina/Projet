<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = (String) request.getAttribute("message");
    java.util.Date date = (java.util.Date) request.getAttribute("date");
%>
<html>
<head>
    <title>Test</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin: 50px; }
        h1 { color: #FF5722; }
        .date { color: #888; font-size: 14px; }
        a { display: inline-block; margin: 20px; padding: 10px 20px;
            background: #FF5722; color: white; text-decoration: none; border-radius: 5px; }
        a:hover { background: #e64a19; }
    </style>
</head>
<body>
    <h1><%= message %></h1>
    <p class="date">Date : <%= date %></p>
    <a href="<%= request.getContextPath() %>/home">Retour à l'accueil</a>
</body>
</html>
