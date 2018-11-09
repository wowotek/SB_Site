<%-- 
    Document   : index
    Created on : Nov 8, 2018, 10:00:18 PM
    Author     : wowotek, fre$h, gaby, sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <form action="nav" method="post">
    <nav class="navbar is-primary" id="top-navbar">
        <div class="container">
            <div class="navbar-brand">
                <input type="image" src="rsc/Logo-16x9.jpeg" style="height: 52px;">
            </div>
            <div class="navbar-menu">
                <div class="navbar-end">
                    <input name="home_nav" type="submit" class="button is-primary is-inverted" value="Home" style="height: 100%" disabled/>
                    <input name="arts_nav" type="submit" class="button is-primary" value="Artist" style="height: 100%"/>
                    <input name="gall_nav" type="submit" class="button is-primary" value="Gallery" style="height: 100%"/>
                    <input name="audi_nav" type="submit" class="button is-primary" value="Audition" style="height: 100%"/>
                </div>
            </div>
        </div>
    </nav>
    </form>
    <div class="content">
        <div class="container">
            <h1 class="title">HOME PAGE</h1>
        </div>
    </div>
</body>
</html>
