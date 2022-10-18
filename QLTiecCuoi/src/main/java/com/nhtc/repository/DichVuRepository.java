/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.repository;

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
public interface DichVuRepository {
    List<Loaidichvu> getLoaiDichVu();
    Loaidichvu getLoaiDichVuByID(int loaiDichVuID);
    List<Dichvu> getDichVu(Map<String, String> params, int page);
    boolean updateDichVuStore(int idDichVu);
    List<DichVuStore> getStoreByDichvu(int dichvu);
    
    long countDichVu(String params);

    boolean addDichVu(Dichvu dichvu);
    boolean updateDichVu(Dichvu dichvu);
    boolean deleteDichVu(int id);
    Dichvu getDichVuById(int id);
    List<Phieudatdichvu> getPhieuDatDichVu();
    
    
    DichVuStore getDichVuStoreByID(int id);
}
