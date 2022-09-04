/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.PhanHoi;
import com.nhtc.repository.PhanHoiRepository;
import com.nhtc.service.PhanHoiService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class PhanHoiServiceImpl implements PhanHoiService {
    @Autowired
    private PhanHoiRepository phanHoiRepository;

    @Override
    public List<PhanHoi> getPhanHoi() {
        return this.phanHoiRepository.getPhanHoi();
    }

    @Override
    public PhanHoi addPhanHoi(String noiDung) {
        return this.phanHoiRepository.addPhanHoi(noiDung);
    }
    
}
