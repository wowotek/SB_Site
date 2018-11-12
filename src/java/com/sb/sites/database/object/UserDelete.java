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
package com.sb.sites.database.object;

import com.sb.sites.database.DB;
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
public class UserDelete extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection c = DB.getConnection();
        UserCRUD uc = new UserCRUD(c);
        System.out.println(uc.delete((String)request.getParameter("username")));
        request.getRequestDispatcher("admin-site.jsp").forward(request, response);
    }
}
