<%-- 
    Document   : registration
    Created on : Nov 10, 2018, 2:46:14 AM
    Author     : wowotek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hello Bulma!</title>
        <link rel="stylesheet" href="rsc/bulma-wowo.css">
        <link rel="stylesheet" href="rsc/style-member.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    </head>
    <body>
        <div class="container coming">
            <div class="box reg-box">
                <form action="reg" method="post">
                    <center>
                        <figure class="image">
                            <img src="rsc/Logo-fit.jpeg" alt="SB Logo" style="height: 150px; width: auto;"/> 
                            <br/>
                        </figure>
                        <h3 class="title is-3" style="color: #EFF0EB;">Registrasi - Informasi Akun</h3>
                        <hr/>
                    </center>   
                    <div class="columns">
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Depan</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Samuel" required name="nama-depan">
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Tengah (Opsional)</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Dwi" name="nama-tengah">
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Belakang (Opsional)</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Bramantya" name="nama-belakang">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Username</label>
                        <div class="control has-icons-left">
                            <input class="input" type="text" placeholder="nama akun anda" required name="username">
                            <span class="icon is-small is-left">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left">
                            <input class="input" type="email" placeholder="alamat email yang valid" required name="email">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>
                    <br/>
                    <div class="columns">
                        <div class="column">
                            <div class="field">
                                <div class="control">
                                    <input type="reset" class="button is-warning is-medium is-fullwidth" value="Reset" id=""/>
                                </div>
                            </div>        
                        </div>
                        <div class="column">
                            <div class="field">
                                <div class="control">
                                    <input name="reg-info-submit" type="submit" class="button is-link is-medium is-fullwidth" value="Submit"/>
                                </div>
                            </div>        
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
