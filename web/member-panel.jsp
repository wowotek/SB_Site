<!--
<%@page import="com.sb.sites.database.object.UserCRUD"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sb.sites.database.DB"%>
<%@page import="com.sb.sites.database.object.User"%>
<%-- 
    Document   : member-panel
    Created on : Nov 11, 2018, 3:41:53 AM
    Author     : wowotek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Member Panel</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-member.css">
    <script defer src="rsc/fontawesome/js/all.js"></script>
    <script src="rsc/member-panel-script.js"></script>
</head>

<body>
    <%
        Connection c = DB.getConnection();
        UserCRUD uc = new UserCRUD(c);
        User user = uc.get((String)request.getSession().getAttribute("user"));
        String username = (String)request.getSession().getAttribute("user");
        request.setAttribute("user", username);
        
        
    %>
    <form action="nav" method="post">
        <nav class="navbar is-primary" id="top-navbar">
            <div class="container">
                <div class="navbar-brand">
                    <img src="rsc/Logo-16x9.jpeg" style="height: 52px; margin: 6px">
                </div>
                <div class="navbar-menu">
                    <div class="navbar-end">
                        <a class="button" style="height: 100%;" disabled>
                            Member Area
                        </a>
                        <a>&emsp;&emsp;</a>
                        <button type="submit" class="button is-primary" style="height: 100%;" name="mem-panel-refresh">
                            <i class="fas fa-user"></i>
                            <label>&MediumSpace;
                                <%= user.username%></label>
                        </button>
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
                    <form action="mem" method="post"></form>
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
                    <form action="mem" method="post">
                        <center><label class="label has-text-white" style="margin-bottom: -10px">Member Tools</label></center>
                        <hr>
                        <div class="field">
                            <div class="control">
                                <input type="submit" value="Write Home Article" class="button is-success is-fullwidth" style="z-index: 0; margin-top: -3px" name="add-home-article">
                            </div>
                        </div>
                        <div class="field">
                            <div class="control">
                                <input type="submit" value="Add Gallery Image" class="button is-success is-fullwidth" style="z-index: 0; margin-top: -3px" name="logout">
                            </div>
                        </div>
                        <div class="field">
                            <div class="control">
                                <input type="submit" value="Logout" class="button is-danger is-fullwidth" style="z-index: 0; margin-top: -3px" name="logout">
                            </div>
                        </div>
                    </form>
                </div>
                <!--<% if (user.getAdminStatus()) {%>-->
                <div class="box">
                    <form action="mem" method="post">
                        <div class="field">
                            <center><label class="label has-text-white" style="margin-bottom: -10px">Admin Tools</label></center>
                            <hr />
                            <div class="field">
                                <div class="control">
                                    <input type="submit" value="View User List" class="button is-warning is-fullwidth" style="z-index: 0; margin-top: -3px" name="EditUserList">
                                </div>
                            </div>
                            <div class="field">
                                <div class="control">
                                    <input type="submit" value="View Artists" class="button is-warning is-fullwidth" style="z-index: 0; margin-top: -3px" name="EditArtists">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!--<% } %>-->
            </div>
            <div class="column">
                <div class="box">
                    <form action="mem" method="post">
                        <center>
                            <h3 class="subtitle is-3 has-text-white">Biografi</h3>
                        </center>
                        <hr>
                        <div class="field">
                            <label class="label has-text-white">Nama Depan</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-depan-input" value="<%=user.nama_depan%>" name="nama-depan">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Nama Tengah</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-tengah-input" value="<%=user.nama_tengah%>" name="nama-tengah">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Nama Belakang</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="nama-belakang-input" value="<%=user.nama_belakang%>" name="nama-belakang">
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
                                        <input type="submit" value="Submit" class="button is-success is-fullwidth" name="bio-edit-submit">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="box">
                    <form action="mem" method="post" onsubmit="return validateAccountInput(this)">
                        <center>
                            <h3 class="subtitle is-3 has-text-white">Akun</h3>
                        </center>
                        <hr>
                        <div class="field">
                            <label class="label has-text-white">User Name</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="username-input" value="<%=user.username%>" name="uname">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">User Name</label>
                            <div class="control">
                                <input type="text" class="input" disabled id="email-input" value="<%=user.email%>" name="emailInput">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Kata Sandi</label>
                            <div class="control">
                                <input type="password" class="input" disabled id="pass1-input" value="<%=user.password%>" required name="passInput1">
                            </div>
                        </div>
                        <div class="field">
                            <label class="label has-text-white">Konfirmasi Kata Sandi</label>
                            <div class="control">
                                <input type="password" class="input" disabled id="pass2-input" required name="passInput2">
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
                                        <input type="submit" value="Submit" class="button is-success is-fullwidth" name="akun-edit-submit">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="box">
                    <form action="mem" method="post">
                        <div class="field">
                            <label class="label has-text-white">Tentang Anda</label>
                            <div class="control">
                                <textarea class="textarea" placeholder="Beritahu Kami Tentang Anda !" style="z-index: 1;"><%=user.tentang%></textarea>
                            </div>
                            <input type="submit" value="Simpan" class="button is-success is-fullwidth" style="z-index: 0; margin-top: -3px">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
