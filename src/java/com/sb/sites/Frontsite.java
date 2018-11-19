package com.sb.sites;


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

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author wowotek
 */
public class Frontsite extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        // FROM NAVIGATION BAR (TOP BAR / navbar)
        if(request.getParameter("home_nav") != null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if(request.getParameter("arts_nav") != null){
            request.getRequestDispatcher("artist.jsp").forward(request, response);
        } else if(request.getParameter("gall_nav") != null){
            request.getRequestDispatcher("gallery.jsp").forward(request, response);
        } else if(request.getParameter("audi_nav") != null){
            request.getRequestDispatcher("audition.jsp").forward(request, response);
        } else if(request.getParameter("logn_nav") != null){
            request.getRequestDispatcher("sign-in.jsp").forward(request, response);
        } 
        
        // From Audition Sign In Or Register Button
        else if (request.getParameter("regs_nav") != null) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else if (request.getParameter("sign_nav") != null) {
            request.getRequestDispatcher("sign-in.jsp").forward(request, response);
        }
        
        // Exist after login
        else if (request.getParameter("memb_nav") != null) {
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        }
    }
}
