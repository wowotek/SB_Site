<!--
<%-- 
    Document   : admin-user-mgmt
    Created on : Nov 8, 2018, 05:00:13 AM
    Author     : wowotek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Management</title>
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
                    User Management
                </h4>
            </div>
        </center>
    </div>

    <div class="page-content">
        <div class="container is-fluid">
            <center>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th class="is-link">Username</th>
                            <th class="is-primary">Email</th>
                            <th class="is-link">Nama Depan</th>
                            <th class="is-primary">Nama Tengah</th>
                            <th class="is-link">Nama Belakang</th>
                            <th class="is-primary">is Admin ?</th>
                            <th class="is-link">Control</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <th>aureliagbrl</th>
                            <th>aureliagbrl@gmail.com</th>
                            <th>Aurelia</th>
                            <th>Gabriele</th>
                            <th>Benita</th>
                            <th>False</th>
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
                    </tbody>
                </table>
            </center>
        </div>
    </div>

</body>

</html>
