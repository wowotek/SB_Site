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
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author wowotek
 */
public class Membersite extends HttpServlet {
    private Connection c = null;
    private UserCRUD uc = null;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(this.c == null){
            this.c = DB.getConnection();
        }
        if(this.uc == null){
            this.uc = new UserCRUD(c);
        }
        
        if(request.getParameter("home_nav") != null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if(request.getParameter("mem-panel-refresh") != null){
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        }
        
        else if(request.getParameter("add-home-article") != null){
            request.getRequestDispatcher("add-home-article.jsp").forward(request, response);
        } else if(request.getParameter("add-gallery-image") != null){
            request.getRequestDispatcher("add-gallery-image.jsp").forward(request, response);
        } else if(request.getParameter("EditArtists") != null){ 
            request.getRequestDispatcher("admin-artist-mgmt.jsp").forward(request, response);
        } else if(request.getParameter("EditUser") != null){
            request.getRequestDispatcher("admin-user-mgmt.jsp").forward(request, response);
        } else if(request.getParameter("logout") != null){
            request.getSession().invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
        else if(request.getParameter("bio-edit-submit") != null){
            User nu = uc.get((String) request.getSession().getAttribute("username"));
            nu.nama_depan = request.getParameter("nama-depan");
            nu.nama_tengah = request.getParameter("nama-tengah");
            nu.nama_belakang = request.getParameter("nama-belakang");
            uc.update(nu, nu.username);
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        } else if(request.getParameter("akun-edit-submit") != null){
            String pass1 = request.getParameter("passInput1");
            String pass2 = request.getParameter("passInput2");
            System.out.println(pass1 + pass2);
            if(pass1.equals(pass2) || pass2.equals(pass1)) { // ISENG ELAH SERIUS AMAT
                User nu = uc.get((String) request.getSession().getAttribute("username"));
                nu.email = request.getParameter("emailInput");
                nu.password = request.getParameter("passInput1");
                uc.update(nu, nu.username);
                request.getRequestDispatcher("member-panel.jsp").forward(request, response);
            }
        } else if(request.getParameter("updateAbout") != null){
            User nu = uc.get((String) request.getSession().getAttribute("username"));
            nu.tentang = request.getParameter("about");
            uc.update(nu, nu.username);
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        }
    }
}
