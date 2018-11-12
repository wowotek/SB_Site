/**
 * This Project created to fulfill an Assignment for Advanced Programming
 * (Pemrograman Lanjut) as a Group which has member of:
 *	- Aurelia Gabriele	(672017277)
 *	- Bimo Bagus 		(672017288)
 *	- Erlangga Ibrahim	(672017282)
 *	- Samuel Dwi Bramantyo  (672017278)
 *
 * This Project Licensed under GNU General Public License v3.0,
 * as is; you can use, copy, contribute, and re-distribute except remove
 * and/or change the license especially make it as a closed source software.
 *
 * This Open Source Project comes with no Guarantees, Use it wisely and with
 * Your own responsibility
 */
package com.sb.sites;

import com.sb.sites.database.DB;
import com.sb.sites.database.object.User;
import com.sb.sites.database.object.UserCRUD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wowotek
 */
@WebServlet("/mem")
public class Member extends HttpServlet {
    private User user;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection c = DB.getConnection();
        UserCRUD uc = new UserCRUD(c);
        
        if (request.getParameter("sign-in-login") != null) {
            
            String getUsername = (String)request.getParameter("username");
            String getPassword = (String)request.getParameter("password");
            
            User getUserInfo = uc.get(getUsername);
            if(getUserInfo == null){
                request.getRequestDispatcher("sign-in.jsp").forward(request, response);
            } else if(getUserInfo.password.equals(getPassword)){
                this.user = getUserInfo;
                request.getSession().setAttribute("user", this.user.username);
                request.getRequestDispatcher("member-panel.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("sign-in.jsp").forward(request, response);
            }
        } else if (request.getParameter("bio-edit-submit") != null) {
            this.user = uc.get((String)request.getSession().getAttribute("user"));
            this.user.nama_depan = request.getParameter("nama-depan");
            this.user.nama_tengah = request.getParameter("nama-tengah");
            this.user.nama_belakang = request.getParameter("nama-belakang");
            uc.update(this.user, (String)request.getSession().getAttribute("user"));
            this.user = uc.get((String)request.getSession().getAttribute("user"));
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        } else if (request.getParameter("akun-edit-submit") != null) {
            this.user = uc.get((String)request.getSession().getAttribute("user"));
            this.user.password = request.getParameter("passInput1");
            this.user.email = request.getParameter("emailInput");
            uc.update(this.user, (String)request.getSession().getAttribute("user"));
            this.user = uc.get((String)request.getSession().getAttribute("user"));
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        } else if (request.getParameter("admin-tools") != null) {
            request.getRequestDispatcher("admin-site.jsp").forward(request, response);
        } else if (request.getParameter("logout") != null) {
            request.getSession().invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
