<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Employe" %>
<%
    List<Employe> employes = (List<Employe>) request.getAttribute("employes");
%>
<html>
<head>
    <title>Liste des employés</title>
    <style>
        table { border-collapse: collapse; width: 80%; margin: 20px auto; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background: #4CAF50; color: white; }
        tr:nth-child(even) { background: #f2f2f2; }
        h1 { text-align: center; }
        .retour { text-align: center; margin: 20px; }
        .retour a { background: #4CAF50; color: white; padding: 10px 20px; 
                    text-decoration: none; border-radius: 5px; }
        .retour a:hover { background: #45a049; }
    </style>
</head>
<body>
    <h1>Liste des employés</h1>
    <table>
        <thead><tr><th>Nom</th><th>Poste</th></tr></thead>
        <tbody>
            <%
                if (employes != null && !employes.isEmpty()) {
                    for (Employe e : employes) {
            %>
                <tr><td><%= e.getNom() %></td>
                    <td><%= e.getPoste() %></td></tr>
            <%
                    }
                } else {
            %>
                <tr><td colspan="2" style="text-align:center;">Aucun employé</td></tr>
            <%
                }
            %>
        </tbody>
    </table>
    <div class="retour"><a href="<%= request.getContextPath() %>/">Retour</a></div>
</body>
</html>