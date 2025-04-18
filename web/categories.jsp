<%-- 
    Document   : categories
    Created on : 17 avr. 2025, 18:35:19
    Author     : ouahm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des catégories</title>
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
            background-color: #444;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        form {
            margin-top: 30px;
            background-color: #fff;
            padding: 20px;
            width: 400px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
            border-radius: 5px;
        }

        input[type="text"] {
            width: calc(100% - 80px);
            padding: 8px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            padding: 8px 15px;
            background-color: #4285f4;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3367d6;
        }
    </style>
</head>
<body>

    <h2>Liste des catégories</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="categorie" items="${categories}">
                <tr>
                    <td>${categorie.id}</td>
                    <td>${categorie.nom}</td>
                    <td>
                        <!-- Exemple d'action -->
                        <form action="CategorieServlet" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${categorie.id}">
                            <input type="submit" name="action" value="Supprimer">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h3>Ajouter une nouvelle catégorie</h3>

    <form action="CategorieServlet" method="post">
        <label for="nom">Nom de la catégorie :</label><br>
        <input type="text" id="nom" name="nom" required>
        <input type="submit" name="action" value="Ajouter">
    </form>

</body>
</html>


