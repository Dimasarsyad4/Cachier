/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.dbmobil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.mobil;

/**
 *
 * @author asus
 */
public class mobildao {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    //insert
    public static int save(mobil b) {
        int status = 0;
        try {
            conn = new dbmobil().setconnection();
            ps = conn.prepareStatement("insert into datamobil(Nama_pemilik,no_telp,jenismobil,harga_penitipan,waktu_penitipan,total_harga) values(?,?,?,?,?,?)");
            ps.setString(1, b.getNama_pemilik());
            ps.setString(2, b.getNo_telp());
            ps.setString(3, b.getJenismobil());
            ps.setInt(4, b.getHarga_penitipan());
            ps.setInt(5, b.getWaktu_penitipan());
            ps.setInt(6, b.getTotal_harga());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    //update
    public static int update(mobil b) {
        int status = 0;
        try {
            conn = new dbmobil().setconnection();
            ps = conn.prepareStatement("update datamobil set Nama_pemilik=?,no_telp=?,jenismobil=?,harga_penitipan=?,waktu_penitipan=?,total_harga=? where mobil=?");
            ps.setString(1, b.getNama_pemilik());
            ps.setString(2, b.getNo_telp());
            ps.setString(3, b.getJenismobil());
            ps.setInt(4, b.getHarga_penitipan());
            ps.setInt(5, b.getWaktu_penitipan());
            ps.setInt(6, b.getTotal_harga());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    
    //delete
    public static int delete(mobil b) {
        int status = 0;
        try {
            conn = new dbmobil().setconnection();
            ps = conn.prepareStatement("delete from datamobil where id_mobil=?");
            ps.setInt(1, b.getId_mobil());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    
    //view
    public static List<mobil> getAllRecords() {
        List<mobil> list = new ArrayList<mobil>();

        try {
            conn = new dbmobil().setconnection();
            ps = conn.prepareStatement("select * from datamobil");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                mobil u = new mobil();
                u.setId_mobil(rs.getInt("id_mobil"));
                u.setNama_pemilik(rs.getString("Nama_pemilik"));
                u.setNo_telp(rs.getString("no_telp"));
                u.setJenismobil(rs.getString("jenismobil"));
                u.setHarga_penitipan(rs.getInt("harga_penitipan"));
                u.setWaktu_penitipan(rs.getInt("waktu_penitipan"));
                u.setTotal_harga(rs.getInt("total_harga"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static mobil getRecordById(int id) {
        mobil u = null;
        try {
            conn = new dbmobil().setconnection();
            ps = conn.prepareStatement("select * from datamobil where id_mobil=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new mobil();
                u.setId_mobil(rs.getInt("id_mobil"));
                u.setNama_pemilik(rs.getString("Nama_pemilik"));
                u.setNo_telp(rs.getString("no_telp"));
                u.setJenismobil(rs.getString("jenismobil"));
                u.setHarga_penitipan(rs.getInt("harga_penitipan"));
                u.setWaktu_penitipan(rs.getInt("waktu_penitipan"));
                u.setTotal_harga(rs.getInt("total_harga"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

}

