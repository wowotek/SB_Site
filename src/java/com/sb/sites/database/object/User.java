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

/**
 *
 * @author wowotek
 */
public class User {
    public String username;
    public String password;
    public String email;
    public String nama_depan;
    public String nama_tengah;
    public String nama_belakang;
    public String tentang;
    public String photo;
    private boolean isAdmin;

    public User(String username, String password, String email, String nama_depan, String nama_tengah, String nama_belakang, String tentang, String photo, boolean isAdmin) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.nama_depan = nama_depan;
        this.nama_tengah = nama_tengah;
        this.nama_belakang = nama_belakang;
        this.tentang = tentang;
        this.photo = photo;
        this.isAdmin = isAdmin;
    }
    
    public User(){

    }
    
    public boolean getAdminStatus(){
        return this.isAdmin;
    }
}
