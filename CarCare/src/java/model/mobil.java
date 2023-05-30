/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Fadhel
 */
public class mobil {
    private int id_mobil, harga_penitipan, waktu_penitipan, total_harga;
    private String nama_pemilik, no_telp, jenismobil;

    public int getId_mobil() {
        return id_mobil;
    }

    public void setId_mobil(int id_mobil) {
        this.id_mobil = id_mobil;
    }

    public int getHarga_penitipan() {
        return harga_penitipan;
    }

    public void setHarga_penitipan(int harga_penitipan) {
        this.harga_penitipan = harga_penitipan;
    }

    public int getWaktu_penitipan() {
        return waktu_penitipan;
    }

    public void setWaktu_penitipan(int waktu_penitipan) {
        this.waktu_penitipan = waktu_penitipan;
    }

    public int getTotal_harga() {
        return total_harga;
    }

    public void setTotal_harga(int total_harga) {
        this.total_harga = total_harga;
    }

    public String getNama_pemilik() {
        return nama_pemilik;
    }

    public void setNama_pemilik(String nama_pemilik) {
        this.nama_pemilik = nama_pemilik;
    }

    public String getNo_telp() {
        return no_telp;
    }

    public void setNo_telp(String no_telp) {
        this.no_telp = no_telp;
    }

    public String getJenismobil() {
        return jenismobil;
    }

    public void setJenismobil(String jenismobil) {
        this.jenismobil = jenismobil;
    }
    

}

