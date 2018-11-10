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
    <link rel="stylesheet" href="rsc/style-front.css">
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
                    <input name="home_nav" type="submit" class="button is-primary" value="Home" style="height: 100%"/>
                    <input name="arts_nav" type="submit" class="button is-primary" value="Artist" style="height: 100%"/>
                    <input name="gall_nav" type="submit" class="button is-primary" value="Gallery" style="height: 100%"/>
                    <input name="audi_nav" type="submit" class="button is-primary is-inverted" value="Audition" style="height: 100%" disabled/>
                </div>
            </div>
        </div>
    </nav>
    </form>
    <div class="content">
        <div class="container">
            <h1 class="title">AUDITION PAGE</h1>
            <div class="columns">
                <div class="column">
                    <div class="box">
                        <p>
                            Pellentesque habitant morbi tristique senectus et
                            netus et malesuada fames ac turpis egestas.
                            Vestibulum tortor quam, feugiat vitae, ultricies
                            eget, tempor sit amet, ante. Donec eu libero sit
                            amet quam egestas semper. Aenean ultricies mi vitae
                            est. Mauris placerat eleifend leo. Quisque sit amet
                            est et sapien ullamcorper pharetra. Vestibulum erat
                            wisi, condimentum sed, commodo vitae, ornare sit
                            amet, wisi. Aenean fermentum, elit eget tincidunt
                            condimentum, eros ipsum rutrum orci, sagittis
                            tempus lacus enim ac dui. Donec non enim in turpis
                            pulvinar facilisis. Ut felis. Praesent dapibus,
                            neque id cursus faucibus, tortor neque egestas
                            augue, eu vulputate magna eros eu erat. Aliquam
                            erat volutpat. Nam dui mi, tincidunt quis,
                            accumsan porttitor, facilisis luctus,
                            metus
                        </p>
                    </div>
                </div>
                <div class="column">
                    <div class="box">
                        <p>info ini</p>
                        <p>info itu</p>
                        <p>info ini</p>
                        <p>info itu</p>
                        <p>info ini</p>
                        <p>info itu</p>
                    </div>
                </div>
            </div>
            <div class="box">
                <form action="nav" method="post">
                    <label class="label">Untuk masuk dalam audisi silahkan registrasi akun : </label>
                    <input name="regs_nav" type="submit" class="button is-link" value="Register" style="height: 100%"/>
                
                    <label class="label">Atau Jika sudah Memiliki Akun silahkan masuk : </label>
                    <input name="sign_nav" type="submit" class="button is-link" value="Sign-In" style="height: 100%"/>
                </form>
            </div>


            <p class="hello">info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
            <p>info ini</p>
            <p>info itu</p>
        </div>
    </div>
</body>
</html>
