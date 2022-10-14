/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.service;

import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import com.nhtc.pojo.Phieudatdichvu;
import java.util.List;
import java.util.Map;

/**
 *
 * @author hdao2
 */
public interface DichVuService {
    List<Loaidichvu> getLoaiDichVu();
    Loaidichvu getLoaiDichVuByID(int loaiDichVuID);
    List<Dichvu> getDichVu(Map<String, String> params, int page);
    long countDichVu(String params);
    boolean updateDichVuStore(int idDichVu);
    List<DichVuStore> getStoreByDichVu(int idDichVu);
    
//    Dichvu getDichvuByID(int idDichvu);
    boolean addDichVu(Dichvu dichvu);
    boolean deleteDichVu(int id);
    boolean updateDichVu(Dichvu dichvu);
    Dichvu getDichVuById(int id);
    List<Phieudatdichvu> getPhieuDatDichVu();

}
