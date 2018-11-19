<%@page import="java.util.ArrayList"%>
<%@page import="com.sb.sites.database.object.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sb.sites.database.object.UserCRUD"%>
<%@page import="com.sb.sites.database.DB"%>
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
    
    <%
        Connection c = DB.getConnection();
        UserCRUD uc = new UserCRUD(c);
        
        ArrayList<User> userList = uc.getAll();
    %>
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
                    <%
                        int counter = 1;
                        for(User i: userList){
                    %>
                    <tr>
                        <th><%=counter%> </th>
                        <th><%=i.username%></th>
                        <th>
                        <%
                            out.println("<input value='"+i.email+"' id='"+i.username+"-email' type='input' class='input is-hovered' maxlength='56'>");
                        %>
                        </th>
                        <th>
                        <%
                            out.println("<input value='"+i.nama_depan+"' id='"+i.username+"-nd' type='input' class='input is-hovered' maxlength='56'>");
                        %>
                        </th>
                        <th>
                        <%
                            out.println("<input value='"+i.nama_tengah+"' id='"+i.username+"-nt' type='input' class='input is-hovered' maxlength='56'>");
                        %>
                        </th>
                        <th>
                        <%
                            out.println("<input value='"+i.nama_belakang+"' id='"+i.username+"-nb' type='input' class='input is-hovered' maxlength='56'>");
                        %>
                        </th>
                        <th><%=i.getAdminStatus()%></th>
                        <th>
                            <%
                                String updateHref = "AdminController?op=update?username=" + i.username;
                                String deleteHref = "AdminController?op=edit?username=" + i.username;
                            %>
                            <div class="field has-addons">
                                <p class="control">
                                    <%
                                        out.println("<button onclick=\"ambildataform('"+ i.username + "-email',"
                                                + "'" + i.username+ "',"
                                                + "'" + i.username+ "-nd',"
                                                + "'" + i.username+ "-nt',"
                                                + "'" + i.username+ "-nb'"
                                                + ")\" class='button is-warning'>");
                                    %>
                                        <span class="icon is-small">
                                            <i class="fa fa-edit"></i>
                                        </span>
                                        <span>Update</span>
                                    </button>
                                </p>
                                <p class="control">
                                    <%
                                        out.println("<a href='AdminController?op=delete&uname="+i.username+"' class='button is-danger'>");
                                    %>
                                        <span>Delete</span>
                                        <span class="icon is-small">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                    </a>
                                </p>
                            </div>
                        </th>
                    </tr>


                    <%
                        counter++;
                        }
                    %>
                </tbody>
            </table>
        </center>
        <div class="container">
            <hr>
            <form method="post" action="AdminController">
            <div class="field has-addons">
                <div class="control is-expanded">
                    <input type="submit" value="back" class="button is-success is-fullwidth" name="backbutton">
                </div>
                <div class="control is-expanded">
                    <input type="submit" value="refresh" class="button is-warning is-fullwidth" name="refreshbutton">
                </div>
            </div> 
            </form>
        </div>
    </div>

</body>
<script>
    function ambildataform(email, username, nd, nt, nb){
        op = "op=update&"
        husername = "uname=" + username + "&";
        hemail = "email=" + document.getElementById(email).value + "&";
        hnd = "nd=" + document.getElementById(nd).value + "&";
        hnt = "nt=" + document.getElementById(nt).value + "&";
        hnb = "nb=" + document.getElementById(nb).value;
        href = "http://" + window.location.hostname + ":" + window.location.port + "/SB_Site/AdminController?" + op + husername + hemail + hnd + hnt + hnb
        window.location = href;
    }
</script>
</html>
