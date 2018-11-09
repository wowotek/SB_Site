<!--
<%-- 
    Document   : index
    Created on : Nov 8, 2018, 10:00:18 PM
    Author     : wowotek, fre$h, gaby, sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="style.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
    <nav class="navbar is-primary" id="top-navbar">
        <div class="container">
            <div class="navbar-brand">
                <input type="image" src="rsc/Logo-16x9.jpeg" style="height: 52px;">
                <span class="navbar-burger burger" data-target="navMenu">
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
            </div>
            <div class="navbar-menu">
                <div class="navbar-end">
                    <a href="index.jsp" class="navbar-item home-item is-active">Home</a>
                    <a href="artist.jsp" class="navbar-item artist-item">Artist</a>
                    <a href="gallery.jsp" class="navbar-item gallery-item">Gallery</a>
                    <a href="audition.jsp" class="navbar-item audition-item">Audition</a>
                </div>
            </div>
        </div>
    </nav>
    <div class="content">

    </div>
</body>
    <script type="text/javascript">
        (function () {
            var burger = document.querySelector('.burger');
            var nav = document.querySelector('#' + burger.dataset.target);
            burger.addEventListener('click', function () {
                burger.classList.toggle('is-active');
                nav.classList.toggle('is-active');
            });
        })();
    </script>
</html>
