
<%-- 
    Document   : member-panel
    Created on : Nov 11, 2018, 3:41:53 AM
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
    <script src="rsc/member-panel-script.js"></script>
</head>

<body>
    <form action="reg" method="post">
        <nav class="navbar is-primary" id="top-navbar">
            <div class="container">
                <div class="navbar-brand">
                    <input type="image" src="rsc/Logo-16x9.jpeg" style="height: 52px; margin: 6px">
                </div>
                <div class="navbar-menu">
                    <div class="navbar-end">
                        <a class="button" style="height: 100%;" disabled>
                            Member Area
                        </a>
                        <a>&emsp;&emsp;</a>
                        <a class="button is-primary" style="height: 100%;">
                            <i class="fas fa-user"></i>
                            <label>&MediumSpace; $username</label>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
    </form>
    <br />
    <div class="container is-widescreen">
        <div class="columns">
            <div class="column is-one-quarter">
                <div class="box">
                    <form action="reg" method="post"></form>
                    <figure class="image is-3by4" style="z-index: 1;">
                        <img src="https://bulma.io/images/placeholders/480x640.png" alt="Profile Picture">
                    </figure>
                    <div class="field" style="margin-top: -5px; z-index: 0;">
                        <div class="file is-small is-boxed is-fullwidth">
                            <label class="file-label">
                                <input class="file-input" type="file" name="resume">
                                <span class="file-cta">
                                    <span class="file-icon">
                                        <i class="fas fa-upload"></i>
                                    </span>
                                    <center>
                                        <span class="file-label">
                                            Unggah Foto Profil
                                        </span>
                                    </center>
                                </span>
                            </label>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="box">
                    <form action="reg" method="post">
                        <div class="field">
                            <label class="label has-text-white">Tentang Anda</label>
                            <div class="control">
                                <textarea class="textarea" placeholder="Beritahu Kami Tentang Anda !" style="z-index: 1;;"></textarea>
                            </div>
                            <input type="submit" value="Simpan" class="button is-success is-fullwidth" style="z-index: 0; margin-top: -3px">
                        </div>
                    </form>
                </div>
            </div>
            <div class="column">
                <div class="box">
                    <form action="reg" method="post">
                        <center>
                            <h3 class="subtitle is-3 has-text-white">Biografi</h3>
                        </center>
                        <hr>
                        <div class="field">
                            <label class="label has-text-white">Nama Depan</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-depan-input">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Nama Tengah</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-tengah-input">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Nama Belakang</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-belakang-input">
                            </div>
                        </div>
                        <br>
                        <div class="field" id="bio-edit-button-cont">
                            <div class="control">
                                <input type="button" value="Edit" class="button is-warning is-fullwidth" onclick="bioEditingToggle()">
                            </div>
                        </div>
                        <div class="columns hid" id="bio-editing-buttons-cont" style="display: none;">
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="button" value="Cancel" class="button is-danger is-fullwidth" onclick="bioEditingToggle()">
                                    </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="reset" value="Reset Field" class="button is-warning is-fullwidth">
                                    </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="submit" value="Submit" class="button is-success is-fullwidth">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="box">
                    <form action="reg" method="post">
                        <center>
                            <h3 class="subtitle is-3 has-text-white">Akun</h3>
                        </center>
                        <hr>
                        <div class="field">
                            <label class="label has-text-white">Kata Sandi</label>
                            <div class="control">
                                <input type="password" class="input" disabled id="pass1-input">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Konfirmasi Kata Sandi</label>
                            <div class="control">
                                <input type="password" class="input" disabled id="pass2-input">
                            </div>
                        </div>
                        <br>
                        <div class="field" id="akun-edit-button-cnt">
                            <div class="control">
                                <input type="button" value="Edit" class="button is-fullwidth is-warning" onclick="akunEditingToggle()">
                            </div>
                        </div>
                        <div class="columns" id="akun-editing-buttons-cnt" style="display: none;">
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="button" value="Cancel" class="button is-danger is-fullwidth" onclick="akunEditingToggle()">
                                    </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="reset" value="Reset Field" class="button is-warning is-fullwidth">
                                    </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="field">
                                    <div class="control">
                                        <input type="submit" value="Submit" class="button is-success is-fullwidth">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>