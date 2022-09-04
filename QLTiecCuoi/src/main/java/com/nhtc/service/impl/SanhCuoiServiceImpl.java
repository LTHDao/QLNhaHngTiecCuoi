/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.SanhCuoiRepository;
import com.nhtc.service.SanhCuoiService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class SanhCuoiServiceImpl implements SanhCuoiService {

    @Autowired
    private SanhCuoiRepository sanhCuoiRepository;
    
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Sanhcuoi> getSanhCuoi() {
        return this.sanhCuoiRepository.getSanhCuoi();
    }

    @Override
    public boolean addSanhCuoi(Sanhcuoi sanhCuoi) {
        try {
            Map r = this.cloudinary.uploader().upload(sanhCuoi.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            sanhCuoi.setHinhAnh((String) r.get("secure_url"));

            return this.sanhCuoiRepository.addSanhCuoi(sanhCuoi);
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }
    
    @Override
    public Sanhcuoi getSanhCuoiById(int idSanh) {
        return this.sanhCuoiRepository.getSanhCuoiById(idSanh);
    }

}
