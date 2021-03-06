package com.sb.sites.database.object;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.sql.*;
import javax.servlet.http.Part;

public class UserCRUD implements CRUDHandler<User> {
    private final Connection c;
    
    public UserCRUD(Connection c){
        this.c = c;
    }
    
    @Override
    public User get(String PrimaryKey) {
        ArrayList<User> users = this.getAll();
        for(User i: users){
            if(i.username.equals(PrimaryKey)){
                return i;
            }
        }
        return null;
    }

    @Override
    public ArrayList<User> getAll() {
        ArrayList<User> users = new ArrayList<>();
        try {
            Statement s = this.c.createStatement();
            ResultSet rs = s.executeQuery("select * from user");
            
            while(rs.next()){
                users.add(new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(9)
                ));
            }
            
            return users;
        } catch (SQLException ex){
            System.err.println(ex.getMessage());
        }
        return null;
    }

    @Override
    public boolean add(User to) {
        try{
            PreparedStatement ps = this.c.prepareStatement
                ("insert into user(username, "
                        + "password, "
                        + "email, "
                        + "nama_depan, "
                        + "nama_tengah, "
                        + "nama_belakang, "
                        + "tentang, "
                        + "isAdmin) values (?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, to.username);
            ps.setString(2, to.password);
            ps.setString(3, to.email);
            ps.setString(4, to.nama_depan);
            ps.setString(5, to.nama_tengah);
            ps.setString(6, to.nama_belakang);
            ps.setString(7, to.tentang);
            if(to.getAdminStatus()){
                ps.setInt(8, 1);
            } else {
                ps.setInt(8, 0);
            }
            
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public boolean update(User newObject, String PrimaryKey) {
        try{
            PreparedStatement ps = this.c.prepareStatement
                ("update `user` set `password`=?, `email`=?, `nama_depan`=?, `nama_tengah`=?, `nama_belakang`=?, `tentang`=? where `username`=?");
            
            ps.setString(1, newObject.password);
            ps.setString(2, newObject.email);
            ps.setString(3, newObject.nama_depan);
            ps.setString(4, newObject.nama_tengah);
            ps.setString(5, newObject.nama_belakang);
            ps.setString(6, newObject.tentang);
            ps.setString(7, newObject.username);
            
            return ps.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public boolean delete(String PrimaryKey) {
        try{
            PreparedStatement ps = this.c.prepareStatement
                ("delete from user where username=?");
            ps.setString(1, PrimaryKey);
            
            return ps.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return false;
        }
    }

    public boolean uploadImage(String PrimaryKey, String PhotoPath) {
        try{
            PreparedStatement ps = this.c.prepareStatement
                ("update user set photo=? where username=?");
            
            ps.setString(1, PhotoPath);
            ps.setString(2, PrimaryKey);
            return ps.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return false;
        }
    }
}
