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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wowotek
 */
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String operate = request.getParameter("op");
        String username = request.getParameter("uname");
        System.out.println(username);
        UserCRUD uc = new UserCRUD(DB.getConnection());
        
        if(operate.equals("delete")){
            uc.delete(username);
        } else if(operate.equals("update")){
            User nu = uc.get(username);
            nu.email = request.getParameter("email");
            nu.nama_depan = request.getParameter("nd");
            nu.nama_tengah = request.getParameter("nt");
            nu.nama_belakang = request.getParameter("nb");
            uc.update(nu, nu.username);
        }
        request.getRequestDispatcher("admin-user-mgmt.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("backbutton") != null){
            request.getRequestDispatcher("member-panel.jsp").forward(request, response);
        } else if(request.getParameter("refreshbutton") != null){
            request.getRequestDispatcher("admin-user-mgmt.jsp").forward(request, response);
        }
    }
}
