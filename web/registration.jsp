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
        <link rel="stylesheet" href="style-member.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    </head>
    <body>
        <div class="container" id="reg-box">
            <div class="box">
                <center>
                    <img src="rsc/Logo-16x9.jpeg" alt="SB Logo" style="height: 72px;"/> 
                </center>
                <center>
                    <h3 class="title is-3" style="color: #EFF0EB;">Register</h3>
                </center>
                <div class="field">
                    <label class="label">Name</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Text input">
                    </div>
                </div>

                <div class="field">
                    <label class="label">Username</label>
                    <div class="control has-icons-left has-icons-right">
                        <input class="input is-success" type="text" placeholder="Text input" value="bulma">
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
                        <input class="input is-danger" type="email" placeholder="Email input" value="hello@">
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>
                        <span class="icon is-small is-right">
                            <i class="fas fa-exclamation-triangle"></i>
                        </span>
                    </div>
                    <p class="help is-danger">This email is invalid</p>
                </div>
            </div>
        </div>
    </body>
</html>
