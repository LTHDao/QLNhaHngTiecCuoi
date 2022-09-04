/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.Nhanvien;
import java.util.List;

/**
 *
 * @author Minh
 */
public interface NhanVienRepository {
    List<Nhanvien> getNhanVien(String nv);
    boolean addNhanVien(Nhanvien nhanVien);
    
}
