<%-- 
    Document   : login
    Created on : 16 avr. 2025, 22:36:14
    Author     : ouahm
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion - Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ✅ Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(to right, #eef2f3, #8e9eab);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-card {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

        .login-card h3 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
        }

        .btn-primary {
            background-color: #0d6efd;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0b5ed7;
        }

        .back-link {
            margin-top: 15px;
            text-align: center;
        }

        .back-link a {
            text-decoration: none;
            color: #0d6efd;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-card">
    <h3>Connexion</h3>

    <!-- ✅ Formulaire -->
    <form action="LoginServlet" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Email :</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="ex: admin@blog.com" required>
        </div>

        <div class="mb-4">
            <label for="password" class="form-label">Mot de passe :</label>
            <input type="password" class="form-control" id="password" name="motDePasse" placeholder="••••••••" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Se connecter</button>
    </form>

    <div class="back-link">
        <a href="index.jsp">← Retour à l'accueil</a>
    </div>
</div>

<!-- ✅ Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
