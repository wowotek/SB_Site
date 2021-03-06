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

import com.sb.sites.database.object.User;
import com.sb.sites.database.object.UserCRUD;
import java.sql.Connection;

public class Register {
    public static boolean registerUser(User user){
        Connection c = DB.getConnection();
        UserCRUD uc = new UserCRUD(c);
        return uc.add(user);
    }
}
