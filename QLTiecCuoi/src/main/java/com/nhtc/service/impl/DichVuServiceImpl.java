/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import com.nhtc.repository.DichVuRepository;
import com.nhtc.service.DichVuService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class DichVuServiceImpl implements DichVuService{
    
    @Autowired
    private DichVuRepository dichVuRepository;

    @Override
    public List<Loaidichvu> getLoaiDichVu() {
        return this.dichVuRepository.getLoaiDichVu();
    }

    @Override
    public Loaidichvu getLoaiDichVuByID(int loaiDichVuID) {
        return this.dichVuRepository.getLoaiDichVuByID(loaiDichVuID);
    }

    @Override
    public List<Dichvu> getDichVu(String params, int page) {
        return this.dichVuRepository.getDichVu(params, page);
    }

    @Override
    public long countDichVu(String params) {
        return this.dichVuRepository.countDichVu(params);
    }
    
}
