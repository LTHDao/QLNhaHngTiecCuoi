/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Loaimon;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.repository.ThucDonRepository;
import com.nhtc.service.ThucDonService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class ThucDonServiceImpl implements ThucDonService {

    @Autowired
    private ThucDonRepository thucDonRepository;

    @Override
    public List<Loaimon> getLoaiMon() {
        return this.thucDonRepository.getLoaiMon();
    }
    
    @Override
    public List<Monan> getMonAn(String params, int page) {
        return this.thucDonRepository.getMonAn(params, page);
    }

    @Override
    public Loaimon getLoaiMonByID(int loaiMonId) {
        return this.thucDonRepository.getLoaiMonByID(loaiMonId);
    }

    @Override
    public long countMonAn(String params) {
        return this.thucDonRepository.countMonAn(params);
    }
    
    @Override
    public Monan getMonAnById(int id) {
        return this.thucDonRepository.getMonAnById(id);
    }

    @Override
    public List<Phieudatmon> getPhieuDatMon() {
        return this.thucDonRepository.getPhieuDatMon();
    }
}
