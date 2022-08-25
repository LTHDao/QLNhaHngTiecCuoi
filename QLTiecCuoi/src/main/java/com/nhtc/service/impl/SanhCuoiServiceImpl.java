/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.SanhCuoiRepository;
import com.nhtc.service.SanhCuoiService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class SanhCuoiServiceImpl implements SanhCuoiService{
    @Autowired
    private SanhCuoiRepository sanhCuoiRepository;

    @Override
    public List<Sanhcuoi> getSanhCuoi() {
        return this.sanhCuoiRepository.getSanhCuoi();
    }
}
