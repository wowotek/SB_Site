<%-- 
    Document   : artist
    Created on : Nov 8, 2018, 10:00:50 PM
    Author     : wowotek, fre$h, gaby, sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SB Artist</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-front.css">
    <script defer src="rsc/fontawesome/js/all.js"></script>
</head>

<body>
    <%
        String username = (String)session.getAttribute("username");
    %>
    <div class="header">
        <form action="Frontsite" method="post">
            <nav class="navbar is-primary">
                <div class="container">
                    <div class="navbar-brand">
                        <input type="image" src="rsc/Logo-16x9.jpeg" style="height: 52px;">
                    </div>
                    <div class="navbar-menu">
                        <div class="navbar-end">
                            <input name="home_nav" type="submit" class="button is-primary" value="Home" style="height: 100%" />
                            <input name="arts_nav" type="submit" class="button is-primary is-inverted" value="Artist" style="height: 100%" disabled />
                            <input name="gall_nav" type="submit" class="button is-primary" value="Gallery" style="height: 100%" />
                            <input name="audi_nav" type="submit" class="button is-primary" value="Audition" style="height: 100%" />
                            <%
                                if(username == null){
                                    out.println("<button type=\"submit\" class=\"button is-primary\" style=\"height: 100%;\" name=\"logn_nav\">");
                                    out.println("<span>MEMBER LOGIN</span>");
                                    out.println("<span class=\"icon is-small\">");
                                    out.println("<i class=\"fas fa-sign-in-alt\"></i>");
                                    out.println("</span>");
                                    out.println("<label>&MediumSpace;</label>");
                                } else {
                                    out.println("<button type=\"submit\" class=\"button is-primary\" style=\"height: 100%;\" name=\"memb_nav\">");
                                    out.println("<span class=\"icon is-small\">");
                                    out.println("<i class=\"fas fa-user\"></i>");
                                    out.println("</span>");
                                    out.println("<span>" + username + "</span>");
                                    out.println("<label>&MediumSpace;</label>");
                                }
                                out.println("</button>");
                            %>
                        </div>
                    </div>
                </div>
            </nav>
        </form>
    </div>
    <div class="page-content">
        <div class="container">
            <h1 class="title has-text-white has-text-centered"> Our Artists</h1>
            <hr>
            <!--
                Start of Repetition
            -->
            <div class="columns">
                <div class="column">
                    <center>
                        <figure class="is-256x256">
                            <img src="rsc/1-artist.jpg" alt="p1" style="width: 256px; height: auto;">
                        </figure>
                        <div class="notification" style="width: 256px; margin-top: -50px;">
                            <center>
                                <label class="label">AYO&TEO</label>
                            </center>
                        </div>
                    </center>
                </div>
                <div class="column">
                    <center>
                        <figure class="is-256x256">
                            <img src="rsc/2-artist.jpg" alt="p1" style="width: 256px; height: auto;">
                        </figure>
                        <div class="notification" style="width: 256px; margin-top: -50px;">
                            <center>
                                <label class="label">VIA VALLEN</label>
                            </center>
                        </div>
                    </center>
                </div>
                <div class="column">
                    <center>
                        <figure class="is-256x256">
                            <img src="rsc/3-artist.jpg" alt="p1" style="width: 256px; height: auto;">
                        </figure>
                        <div class="notification" style="width: 256px; margin-top: -50px;">
                            <center>
                                <label class="label">GFRIEND</label>
                            </center>
                        </div>
                    </center>
                </div>
            </div>
            <!--
                End Of Repetition
            -->
        </div>
    </div>
    <footer class="footer">
        <div class="columns">
            <div class="column">
                <center>
                    <figure class="is-24x24">
                        <img src="rsc/icon-1" alt="i1" style="width: 24px; height: 24px;">
                    </figure>
                    <label class="label">aboutus@sbentertaintment.com</label>
                    <figure class="is-24x24">
                        <img src="rsc/icon-2" alt="i2" style="width: 24px; height: 24px;">
                    </figure>
                    <label class="label">Jl. Perum Sehati B35 Blotongan<br>Salatiga, Jawa Tengah<br>Indonesia</label>
                </center>
            </div>
            <div class="column">
                <center>
                    <strong>
                        Site Developers
                    </strong>
                </center>
                <hr>
                <div class="columns">
                    <div class="column">
                        <a class="box" href="https://www.instagram.com/aureliagbrl/">
                            <figure class="image is-1by1">
                                <img class="is-rounded" src="rsc/creator/gaby.jpg">
                            </figure>
                            <hr>
                            <p>
                                <label class="label">
                                    Aurelia Gabriele Benita
                                </label>
                            </p>
                            <br>
                            <p align="center">
                                Lead Designer, Front-end, Writer
                            </p>
                        </a>
                    </div>
                    <div class="column">
                        <a class="box" href="https://www.instagram.com/samueld.b/">
                            <figure class="image is-1by1">
                                <img class="is-rounded" src="rsc/creator/samuel.jpg">
                            </figure>
                            <hr>
                            <p>
                                <label class="label">
                                    Samuel Dwi Bramantya
                                </label>
                            </p>
                            <br>
                            <p align="center">
                                Designer
                            </p>
                        </a>
                    </div>
                    <div class="column">
                        <a class="box" href="https://www.instagram.com/bbgnxx/">
                            <figure class="image is-1by1">
                                <img class="is-rounded" src="rsc/creator/bimo.jpg">
                            </figure>
                            <hr>
                            <p>
                                <label class="label">
                                    Bimo Bagus
                                </label>
                            </p>
                            <br>
                            <p align="center">
                                Lead Front-end Dev, Designer, Writer, Content Manager
                            </p>
                        </a>
                    </div>
                    <div class="column">
                        <a class="box" href="https://www.twitter.com/wowosk8/">
                            <figure class="image is-1by1">
                                <img class="is-rounded" src="rsc/creator/wowo.jpg">
                            </figure>
                            <hr>
                            <p>
                                <label class="label">
                                    Erlangga Ibrahim
                                </label>
                            </p>
                            <br>
                            <p align="center">
                                Project Manager, Front-end Dev, Back-end Dev, Project Consultant, Sysadmin
                            </p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="column">
                <center>
                    <figure class="is-720x240">
                        <img src="rsc/logo720x240-1.png" alt="SB Company Logo">
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
