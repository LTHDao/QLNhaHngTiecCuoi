/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface DichVuRepository {
    List<Loaidichvu> getLoaiDichVu();
    Loaidichvu getLoaiDichVuByID(int loaiDichVuID);
    List<Dichvu> getDichVu(String params, int page);
    long countDichVu(String params);
}