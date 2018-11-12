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
<meta http-equiv="refresh" content="300">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hello Bulma!</title>
<link rel="stylesheet" href="rsc/bulma-wowo.css">
<link rel="stylesheet" href="style-front.css">
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
            <input name="home_nav" type="submit" class="button is-primary is-inverted" value="HOME" style="height: 100%" disabled/>
            <input name="arts_nav" type="submit" class="button is-primary" value="ARTIST" style="height: 100%"/>
            <input name="gall_nav" type="submit" class="button is-primary" value="GALLERY" style="height: 100%"/>
            <input name="audi_nav" type="submit" class="button is-primary" value="AUDITION" style="height: 100%"/>
        </div>
    </div>
</div>
</nav>
</form>
<div class="hero-video">
    <video playsinline autoplay muted loop>
        <source src="rsc/bgvideo-1.MKV" >
    </video>
</div>
<br>
<div class="container is-fluid" style="z-index: 3;">
<div class="columns">
    <div class="column">
        <div class="box-pst">
            <figure class="image is-640by320">
                <img src="rsc/artist-index-1.jpg" alt="artis" style="width: 640px; height: 320px;">
            </figure>
            <div class="box">
                <h1 class="title">
                    Via Vallen dalam Live Stage 'Meraih Bintang'
                </h1>
                <h6>
                    Sempat digoda oleh pemain bola asal Kroasia, Via memeriahkan acara Asian Games 2018 dengan semangat Tekad Api<br />
                    <br><a href="https://youtu.be/TX4Djz5bSkw"class="button is-link">Full Video Click Here!</a>
                </h6>
            </div>       
        </div>
    </div>
    <div class="column">
        <div class="box-pst">
            <figure class="image is-640by320">
                <img src="rsc/artist-index-2.jpg" alt="artis" style="width : 640px; height: 320px;">
            </figure>
            <div class="box">
                <h1 class="title">
                    SMVLL rilis album jomblo ngenes dengan judul 'SELOW'
                </h1>
                <h6>
                    Sempat suka ngegas, SMVLL buat lagu berjudul 'SELOW', hingga sering telat berangkat kuliah<br>
                    <br />
                    <a href="https://youtu.be/EITQh1-gCps"class="button is-link">Full Video Click Here!</a>
                </h6>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
</body>
<footer class="footer">
    <div class="container">
        <div class="content has-text-centered">
        <p>
            <strong>SB ENTERTAINMENT</strong><br />
        </p>
        </div>
        <div class="columns">
            <div class="column">
            <figure class="is-24x24">
                <img src="rsc/icon-1" alt="i1" style="width: 24px; height: 24px;"><label class="label">aboutus@sbentertaintment.com</label>
            </figure>
            <figure class="is-24x24">
                <img src="rsc/icon-2" alt="i2" style="width: 24px; height: 24px;"><label class="label">Jl. Perum Sehati B35 Blotongan<br>Salatiga, Jawa Tengah<br>Indonesia</label>
            </figure>
            </div>
            <div class="column">
                <figure class="is-720x240">
                    <img src="rsc/logo720x240-1.png" alt="yagitu" style="width: 720px; height: 240px; margin-left: 78px;">
                </figure>
                <h6 style="margin-left: 78px">
                    Copyright SB Etertaintment. Allright Reserved.
                </h6>
            </div>
        </div>
    </div>
    </footer>
</html>
