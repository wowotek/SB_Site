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
package com.sb.sites.database;

import java.sql.*;

public class DB {
    private Connection conn;
    
    private DB() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sb_sites", "root", "");
            System.out.println("--[Database Connection Success]--");
        } catch(SQLException | ClassNotFoundException ex){
            System.err.println(ex.getMessage());
        }
        
    }
    
    public static Connection getConnection(){
        return new DB().conn;
    }
}
