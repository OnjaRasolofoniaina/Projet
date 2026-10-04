<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Employe" %>
<%
    String message = (String) request.getAttribute("message");
    List<Employe> employes = (List<Employe>) request.getAttribute("employes");
%>
<html>
<head>
    <title>Accueil</title>
    <style>
        body { font-family: Arial; text-align: center; margin: 50px; }
        .message { color: #4CAF50; font-size: 24px; }
        a { display: inline-block; margin: 10px; padding: 10px 20px; 
            background: #4CAF50; color: white; text-decoration: none; border-radius: 5px; }
        a:hover { background: #45a049; }
        table { margin: 20px auto; border-collapse: collapse; width: 60%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background: #f2f2f2; }
    </style>
</head>
<body>
    <h1 class="message"><%= message %></h1>
    
    <div>
        <a href="<%= request.getContextPath() %>/employes">Voir tous les employés</a>
        <a href="<%= request.getContextPath() %>/controllers">Voir les contrôleurs</a>
    </div>
    
    <h2>Quelques employés :</h2>
    <table>
        <thead>
            <tr><th>Nom</th><th>Poste</th></tr>
        </thead>
        <tbody>
            <%
                if (employes != null) {
                    int count = 0;
                    for (Employe e : employes) {
                        if (count++ >= 3) break;
            %>
                <tr><td><%= e.getNom() %></td><td><%= e.getPoste() %></td></tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
    <p><a href="<%= request.getContextPath() %>/employes">Voir tous les employés →</a></p>
</body>
</html>