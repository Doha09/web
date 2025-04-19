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

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            color: white;
            height: 100vh;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }

        header img {
            width: 80px;
        }

        .btn-custom {
            padding: 12px 30px;
            font-size: 18px;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: rgba(0,0,0,0.7);
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>

<div class="overlay">
    <!-- En-tête avec logo -->
    <header class="mb-4">
        <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Logo Blog" />
        <h1 class="mt-3">Bienvenue sur notre blog !</h1>
        <p class="lead">Une plateforme de partage, de gestion d’articles et de commentaires.</p>
    </header>

    <!-- Bouton de connexion -->
    <div>
        <p class="mb-3 fs-5">Cliquez ici pour vous connecter :</p>
        <a href="login.jsp" class="btn btn-primary btn-lg btn-custom">Se connecter</a>
    </div>
</div>

<footer>
    &copy; 2025 - Projet Gestion Blog
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
