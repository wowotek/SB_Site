<!--
<%-- 
    Document   : gallery
    Created on : Nov 8, 2018, 10:5:06 PM
    Author     : wowotek, fre$h, gaby, sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SB Gallery</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-front.css">
    <script defer src="rsc/fontawesome/js/all.js"></script>
</head>

<body>
    <div class="header">
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
                            <input name="gall_nav" type="submit" class="button is-primary is-inverted" value="Gallery" style="height: 100%" disabled />
                            <input name="audi_nav" type="submit" class="button is-primary" value="Audition" style="height: 100%" />
                            <button type="submit" class="button is-primary" style="height: 100%;" name="logn_nav">
                                <i class="fas fa-user"></i>
                                <label>&MediumSpace;
                                    <%= user.username%></label>
                            </button>
                        </div>
                    </div>
                </div>
            </nav>
        </form>
    </div>
    <div class="page-content">
        <div class="container is-fluid">

            <!-- 
                Repeat until the data is done
            -->
            <div class="tile is-ancestor">
                <!-- 
                    REPEAT MAXIMUM THREE TIMES
                -->
                <div class="tile is-parent">
                    <div class="tile is-child box">
                        <p class="title">Three</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvinar, at pulvinar felis blandit. Vestibulum volutpat tellus diam, consequat gravida libero rhoncus ut. Morbi maximus, leo sit amet vehicula eleifend, nunc dui porta orci, quis semper odio felis ut quam.</p>
                        <p>Suspendisse varius ligula in molestie lacinia. Maecenas varius eget ligula a sagittis. Pellentesque interdum, nisl nec interdum maximus, augue diam porttitor lorem, et sollicitudin felis neque sit amet erat. Maecenas imperdiet felis nisi, fringilla luctus felis hendrerit sit amet. Aenean vitae gravida diam, finibus dignissim turpis. Sed eget varius ligula, at volutpat tortor.</p>
                        <p>Integer sollicitudin, tortor a mattis commodo, velit urna rhoncus erat, vitae congue lectus dolor consequat libero. Donec leo ligula, maximus et pellentesque sed, gravida a metus. Cras ullamcorper a nunc ac porta. Aliquam ut aliquet lacus, quis faucibus libero. Quisque non semper leo.</p>
                    </div>
                </div>
                <div class="tile is-parent">
                    <div class="tile is-child box">
                        <p class="title">Three</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvinar, at pulvinar felis blandit. Vestibulum volutpat tellus diam, consequat gravida libero rhoncus ut. Morbi maximus, leo sit amet vehicula eleifend, nunc dui porta orci, quis semper odio felis ut quam.</p>
                        <p>Suspendisse varius ligula in molestie lacinia. Maecenas varius eget ligula a sagittis. Pellentesque interdum, nisl nec interdum maximus, augue diam porttitor lorem, et sollicitudin felis neque sit amet erat. Maecenas imperdiet felis nisi, fringilla luctus felis hendrerit sit amet. Aenean vitae gravida diam, finibus dignissim turpis. Sed eget varius ligula, at volutpat tortor.</p>
                        <p>Integer sollicitudin, tortor a mattis commodo, velit urna rhoncus erat, vitae congue lectus dolor consequat libero. Donec leo ligula, maximus et pellentesque sed, gravida a metus. Cras ullamcorper a nunc ac porta. Aliquam ut aliquet lacus, quis faucibus libero. Quisque non semper leo.</p>
                    </div>
                </div>
                <div class="tile is-parent">
                    <div class="tile is-child box">
                        <p class="title">Three</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvinar, at pulvinar felis blandit. Vestibulum volutpat tellus diam, consequat gravida libero rhoncus ut. Morbi maximus, leo sit amet vehicula eleifend, nunc dui porta orci, quis semper odio felis ut quam.</p>
                        <p>Suspendisse varius ligula in molestie lacinia. Maecenas varius eget ligula a sagittis. Pellentesque interdum, nisl nec interdum maximus, augue diam porttitor lorem, et sollicitudin felis neque sit amet erat. Maecenas imperdiet felis nisi, fringilla luctus felis hendrerit sit amet. Aenean vitae gravida diam, finibus dignissim turpis. Sed eget varius ligula, at volutpat tortor.</p>
                        <p>Integer sollicitudin, tortor a mattis commodo, velit urna rhoncus erat, vitae congue lectus dolor consequat libero. Donec leo ligula, maximus et pellentesque sed, gravida a metus. Cras ullamcorper a nunc ac porta. Aliquam ut aliquet lacus, quis faucibus libero. Quisque non semper leo.</p>
                    </div>
                </div>
                <!--
                    END OF REPEAT
                -->
            </div>
            <!--
                End of Repeats
            -->

        </div>
    </div>

    <footer class="footer">
        <center>
            <strong>
                SB ENTERTAINMENT
            </strong>
        </center>
        <hr>
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
