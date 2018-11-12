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

@WebServlet("/reg")
public class Registration extends HttpServlet {
    
    private User user = new User();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("reg-info-submit") != null) {
            this.user.username = request.getParameter("username");
            this.user.email = request.getParameter("email");
            this.user.nama_depan = request.getParameter("nama-depan");
            this.user.nama_tengah = request.getParameter("nama-tengah");
            this.user.nama_belakang = request.getParameter("nama-belakang");
            request.getRequestDispatcher("reg-pass.jsp").forward(request, response);
        } else if (request.getParameter("reg-pass-submit") != null) {
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            
            if(pass1.equals(pass2)){
                this.user.password = pass1;
                Connection c = DB.getConnection();
                UserCRUD uc = new UserCRUD(c);
                uc.add(this.user);
                request.getRequestDispatcher("sign-in.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("reg-pass.jsp").forward(request, response);
            }
            
        }
    }
}