<%-- 
    Document   : admin_site
    Created on : Nov 12, 2018, 8:31:44 AM
    Author     : wowotek
--%>

<%@page import="com.sb.sites.database.object.UserCRUD"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sb.sites.database.DB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sb.sites.database.object.User"%>
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
        <% 
            Connection c = DB.getConnection();
            UserCRUD uc = new UserCRUD(c);
            ArrayList<User> userList = uc.getAll();
        %>
        
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
            int index = 0;
            for(User i: userList){
                out.println("<tr>");
                out.println("       <th>");
                out.println("           "+Integer.toString(index));
                out.println("       </th>");
                out.println("       <th>");
                out.println("           "+i.username);
                out.println("       </th>");
                out.println("       <th>");
                out.println("           "+i.email);
                out.println("       </th>");
                out.println("       <th>");
                out.println("           "+i.nama_depan);
                out.println("       </th>");
                out.println("       <th>");
                out.println("           "+i.nama_tengah);
                out.println("       </th>");
                out.println("       <th>");
                out.println("           "+i.nama_belakang);
                out.println("       </th>");
                if(i.getAdminStatus()){
                    out.println("       <th class=\"has-text-info\">");
                } else {
                    out.println("       <th class=\"has-text-danger\">");
                }
                out.println("           "+i.getAdminStatus());
                out.println("       </th>");
                out.println("       <th>");
                out.println("           <a href=\"UserDelete?username="+ i.username +"\" class=\"button is-danger\">");
                out.println("               Delete");
                out.println("           </a>");
                out.println("       </th>");
                out.println("</tr>");
                index++;
            }
        %>
                </tbody>
            </table>
    </body>
</html>
