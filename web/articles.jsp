<%-- 
    Document   : articles
    Created on : 17 avr. 2025, 18:35:01
    Author     : ouahm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Articles disponibles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 40px;
        }

        h2, h3 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #555;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        ul {
            list-style: disc;
            padding-left: 20px;
        }

        li {
            margin: 5px 0;
        }
    </style>
</head>
<body>

    <h2>Articles disponibles</h2>

    <table>
        <thead>
            <tr>
                <th>Titre</th>
                <th>Contenu</th>
                <th>Date de publication</th>
                <th>Catégorie</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="article" items="${articles}">
                <tr>
                    <td>${article.titre}</td>
                    <td>${article.contenu}</td>
                    <td>${article.datePublication}</td>
                    <td>${article.categorie.nom}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h3>Catégories disponibles :</h3>
    <ul>
        <c:forEach var="cat" items="${categories}">
            <li>${cat.nom}</li>
        </c:forEach>
    </ul>

</body>
</html>
