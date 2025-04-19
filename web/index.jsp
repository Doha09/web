<%-- 
    Document   : index
    Created on : 17 avr. 2025, 23:49:47
    Author     : ouahm
--%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Accueil - Gestion Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 80px 0;
        }
        .main-content {
            margin-top: 40px;
        }
        footer {
            background-color: #343a40;
            color: white;
            padding: 15px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<!-- En-tête -->
<header class="text-center">
    <div class="container">
        <h1 class="display-4">Bienvenue sur notre blog !</h1>
        <p class="lead">Une plateforme de partage, de gestion d’articles et de commentaires.</p>
    </div>
</header>

<!-- Contenu principal -->
<main class="container text-center main-content">
    <p class="fs-5 mb-4">Cliquez ici pour vous connecter :</p>
    <a href="login.jsp" class="btn btn-primary btn-lg">Se connecter</a>
</main>

<!-- Pied de page -->
<footer class="text-center">
    &copy; 2025 - Projet Gestion Blog
</footer>

<!-- JS Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
