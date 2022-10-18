/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.repository.DichVuRepository;
import com.nhtc.service.DichVuService;
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
public class DichVuServiceImpl implements DichVuService {

    @Autowired
    private Cloudinary cloudinary;

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
    public List<Dichvu> getDichVu(Map<String, String> params, int page) {
        return this.dichVuRepository.getDichVu(params, page);
    }

    @Override
    public long countDichVu(String params) {
        return this.dichVuRepository.countDichVu(params);
    }

    @Override
    public boolean addDichVu(Dichvu dichvu) {
        try {
            Map r = this.cloudinary.uploader().upload(dichvu.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            dichvu.setHinhAnh((String) r.get("secure_url"));

            return this.dichVuRepository.addDichVu(dichvu);
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }

//    @Override
//    public Dichvu getDichvuByID(int idDichvu) {
//        return this.dichVuRepository.getDichvuByID(idDichvu);
//    }
    @Override
    public boolean deleteDichVu(int id) {
        return this.dichVuRepository.deleteDichVu(id);
    }

    @Override
    public Dichvu getDichVuById(int id) {
        return this.dichVuRepository.getDichVuById(id);
    }

    @Override
    public List<Phieudatdichvu> getPhieuDatDichVu() {
        return this.dichVuRepository.getPhieuDatDichVu();
    }

    @Override
    public List<DichVuStore> getStoreByDichvu(int dichvu) {
        return this.dichVuRepository.getStoreByDichvu(dichvu);
    }

    @Override
    public DichVuStore getDichVuStoreByID(int id) {
        return this.dichVuRepository.getDichVuStoreByID(id);
    }
    
    @Override
    public boolean updateDichVu(Dichvu dichvu) {
        return this.dichVuRepository.updateDichVu(dichvu);
    }

    @Override
    public boolean updateDichVuStore(int idDichVu) {
        return this.dichVuRepository.updateDichVuStore(idDichVu);
    }

}
