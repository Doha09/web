<%-- 
    Document   : dashboard_admin.jsp
    Created on : 16 avr. 2025, 23:12:25
    Author     : ouahm
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entities.Admin" %>
<%
    Admin user = (Admin) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .dashboard {
            margin-top: 80px;
        }
    </style>
</head>
<body>

<!-- Barre de navigation -->
<nav class="navbar navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1">Admin Panel</span>
        <span class="text-white">Bienvenue, <%= user.getNom() %></span>
    </div>
</nav>

<!-- Contenu -->
<div class="container dashboard text-center">
    <h2 class="mb-4">Tableau de bord Administrateur</h2>

    <div class="row g-4 justify-content-center">
        <div class="col-md-4">
            <a href="articles.jsp" class="btn btn-outline-primary w-100 py-3">📄 Gérer les articles</a>
        </div>
        <div class="col-md-4">
            <a href="categories.jsp" class="btn btn-outline-secondary w-100 py-3">📚 Gérer les catégories</a>
        </div>
        <div class="col-md-4">
            <a href="logout.jsp" class="btn btn-outline-danger w-100 py-3">🚪 Déconnexion</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
