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

// TO for Target Object

import java.util.ArrayList;
import javax.servlet.http.Part;

public interface CRUDHandler<TO> {
    
    TO get(String PrimaryKey);
    ArrayList<TO> getAll();
    
    boolean add(TO to);
    boolean update(TO newObject, String PrimaryKey);
    boolean delete(String PrimaryKey);
}
