<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = (String) request.getAttribute("message");
    if (message == null) message = "Bonjour !";
%>
<html>
<head>
    <title>Hello</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        h1 {
            color: #2196F3;
        }
    </style>
</head>
<body>
    <h1><%= message %></h1>
    <p><a href="<%= request.getContextPath() %>/">Retour à l'accueil</a></p>
</body>
</html>