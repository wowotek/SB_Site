<!--
<%-- 
    Document   : admin-artist-mgmt
    Created on : Nov 8, 2018, 11:52:03 AM
    Author     : wowotek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Artist Management</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-member.css">
    <script defer src="rsc/fontawesome/js/all.js"></script>
</head>

<body>
    <div class="header" style="background-color: #980A14; margin-bottom: 30px; padding: 10px;">
        <center>
            <div class="container">
                <h2 class="title is-2 has-text-white">
                    Administrator Panel
                </h2>
                <hr>
                <h4 class="title is-4 has-text-white">
                    Artist Management
                </h4>
            </div>
        </center>
    </div>

    <div class="page-content">
        <div class="container">
            <div class="box">
                <div class="container is-fluid">
                    <div class="field has-addons">
                        <p class="control">
                            <button type="submit" class="button is-warning">
                                <span class="icon is-small">
                                    <i class="fa fa-edit"></i>
                                </span>
                                <span>Update</span>
                            </button>
                        </p>
                        <p class="control">
                            <button type="submit" class="button is-danger">
                                <span>Delete</span>
                                <span class="icon is-small">
                                    <i class="fas fa-trash"></i>
                                </span>
                            </button>
                        </p>
                    </div>
                </div>
            </div>
            <center>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Artist ID</th>
                            <th class="is-link">Artist Name</th>
                            <th class="is-primary">Artist Photo</th>
                            <th class="is-link">Control</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- REPEAT START
                        <tr>
                            <th>1</th>
                            <th>Aurelia Gabriele</th>
                            <th>
                                <figure>
                                    Image Here
                                </figure>
                            </th>
                            <th>
                                <div class="field has-addons">
                                    <p class="control">
                                        <button type="submit" class="button is-warning is-small">
                                            <span class="icon is-small">
                                                <i class="fa fa-edit"></i>
                                            </span>
                                            <span>Update</span>
                                        </button>
                                    </p>
                                    <p class="control">
                                        <button type="submit" class="button is-danger is-small">
                                            <span>Delete</span>
                                            <span class="icon is-small">
                                                <i class="fas fa-trash"></i>
                                            </span>
                                        </button>
                                    </p>
                                </div>
                            </th>
                        </tr>
                        REPEAT END-->
                    </tbody>
                </table>
            </center>
        </div>
    </div>
</body>

</html>
