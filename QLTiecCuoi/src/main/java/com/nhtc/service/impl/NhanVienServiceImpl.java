/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Nhanvien;
import com.nhtc.repository.NhanVienRepository;
import com.nhtc.service.NhanVienService;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Minh
 */
@Service
public class NhanVienServiceImpl implements NhanVienService {

    private NhanVienRepository nhanVienRepository;

    @Override
    public List<Nhanvien> getNhanVien(String nv) {
        return this.nhanVienRepository.getNhanVien(nv);
    }

    @Override
    public boolean addNhanVien(Nhanvien nhanVien) {
        
        return this.nhanVienRepository.addNhanVien(nhanVien);
    }

}
