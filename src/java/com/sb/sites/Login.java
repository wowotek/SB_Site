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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wowotek
 */
public class Login extends HttpServlet {
    private Connection db = null;
    private UserCRUD uc = null;
    
    private void initDB(){
        if(this.db == null){
            this.db = DB.getConnection();
        }
        
        if(this.uc == null){
            this.uc = new UserCRUD(this.db);
        }
    }
    
    private User user = null;
    private boolean authenticate(String user, String password){
        User getUser = this.uc.get(user);
        
        if(getUser == null){
            return false;
        } else {
            this.user = getUser;
            return getUser.password.equals(password);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(db == null || uc == null){
            this.initDB();
        }
        
        if(this.authenticate(
                (String)request.getParameter("username"),
                (String)request.getParameter("password"))){
            request.getSession().setAttribute("username", this.user.username);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("sign-in.jsp").forward(request, response);
        }
    }
}
