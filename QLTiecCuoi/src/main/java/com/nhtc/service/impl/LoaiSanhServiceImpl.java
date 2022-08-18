/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Loaisanh;
import com.nhtc.repository.LoaiSanhRepository;
import com.nhtc.service.LoaiSanhService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class LoaiSanhServiceImpl implements LoaiSanhService {
    @Autowired
    private LoaiSanhRepository loaiSanhRepository;

    @Override
    public List<Loaisanh> getLoaiSanh() {
        return this.loaiSanhRepository.getLoaiSanh();
    }
}
