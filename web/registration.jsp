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
        <div class="container">
            <div class="box reg-box">
                <form>
                    <center>
                        <img src="rsc/Logo-1x1.jpeg" alt="SB Logo" style="height: 256px;"/> 
                        <h3 class="title is-3" style="color: #EFF0EB;">Registrasi Akun</h3>
                    </center>
                    <hr/>
                    <div class="columns">
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Depan</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Samuel" required>
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Tengah</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Dwi">
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="field">
                                <label class="label">Nama Belakang</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Bramantya">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Username</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input is-success" type="text" placeholder="nama akun anda" value="bulma" required>
                            <span class="icon is-small is-left">
                                <i class="fas fa-user"></i>
                            </span>
                            <span class="icon is-small is-right">
                                <i class="fas fa-check"></i>
                            </span>
                        </div>
                        <p class="help is-success">This username is available</p>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input is-danger" type="email" placeholder="alamat email yang valid" required>
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                            <span class="icon is-small is-right">
                                <i class="fas fa-exclamation-triangle"></i>
                            </span>
                        </div>
                        <p class="help is-danger">This email is invalid</p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
