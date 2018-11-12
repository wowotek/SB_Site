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
    private User user;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("reg-pass-submit") != null) {
            
            String pass1 = (String)request.getParameter("pass1");
            String pass2 = (String)request.getParameter("pass2");
            
            if(pass1.equals(pass2)){
                this.user = new User(
                    (String)request.getParameter("username"), 
                    (String)request.getParameter("pass1"), 
                    (String)request.getParameter("email"), 
                    (String)request.getParameter("nama-depan"), 
                    (String)request.getParameter("nama-tengah"), 
                    (String)request.getParameter("nama-belakang"), 
                    "", "", false);
                Connection c = DB.getConnection();
                UserCRUD uc = new UserCRUD(c);
                System.out.println(uc.add(this.user));
                request.getRequestDispatcher("sign-in.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("reg-info.jsp").forward(request, response);
            }
        }
    }
}