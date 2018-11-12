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
    <link rel="stylesheet" href="rsc/style-front.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>

<body>
    <form action="nav" method="post">
        <nav class="navbar is-primary">
            <div class="container">
                <div class="navbar-brand">
                    <input type="image" src="rsc/Logo-16x9.jpeg" style="height: 52px;">
                </div>
                <div class="navbar-menu">
                    <div class="navbar-end">
                        <input name="home_nav" type="submit" class="button is-primary" value="Home" style="height: 100%" />
                        <input name="arts_nav" type="submit" class="button is-primary" value="Artist" style="height: 100%" />
                        <input name="gall_nav" type="submit" class="button is-primary" value="Gallery" style="height: 100%" />
                        <input name="audi_nav" type="submit" class="button is-primary is-inverted" value="Audition" style="height: 100%" disabled />
                    </div>
                </div>
            </div>
        </nav>
    </form>
    <div class="container is-fluid" style="position: sticky; margin-top: calc(10% - 36px); z-index: 50;">
        <div class="columns">
            <div class="column">
            </div>
            <div class="column">
                <div class="box">
                    <form action="nav" method="post">
                        <center>
                            <h5 class="title is-5 has-text-black">Sign in or Register if you didn't yet have an account</h5>
                        </center>
                        <hr style="background-color: black">
                        <div class="columns">
                            <div class="column">
                                <input name="regs_nav" type="submit" class="button is-link is-fullwidth" value="Register" style="z-index: 100;" />
                            </div>
                            <div class="column">
                                <input name="sign_nav" type="submit" class="button is-link is-fullwidth" value="Sign-In" style="z-index: 101;" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="column">
            </div>
        </div>
    </div>
    <div class="hero-video">
        <video playsinline autoplay muted loop style="z-index: -2;">
            <source src="rsc/bgvideo-3.MKV">
        </video>
    </div>
    <footer class="footer" style="position: fixed; bottom: 0px; width: 100%;">
        <div class="content has-text-centered">
            <p>
                <strong>SB ENTERTAINMENT</strong><br />
            </p>
        </div>
        <br>
        <div class="columns">
            <div class="column">
                <center>
                    <figure class="is-24x24">
                        <img src="rsc/icon-1" alt="i1" style="width: 24px; height: 24px;"><label class="label">aboutus@sbentertaintment.com</label>
                    </figure>
                    <figure class="is-24x24">
                        <img src="rsc/icon-2" alt="i2" style="width: 24px; height: 24px;"><label class="label">Jl. Perum Sehati B35 Blotongan<br>Salatiga, Jawa Tengah<br>Indonesia</label>
                    </figure>
                </center>
            </div>
            <div class="column">
                <center>
                    <figure class="is-720x240">
                        <img src="rsc/logo720x240-1.png" alt="yagitu" style="width: 360px; height: 120px; margin-left: 78px;">
                    </figure>
                    <h6 style="margin-left: 78px">
                        Copyright SB Etertaintment. Allright Reserved.
                    </h6>
                </center>
            </div>
        </div>
    </footer>
</body>

</html>
