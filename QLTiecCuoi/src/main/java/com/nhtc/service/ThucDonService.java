/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.service;

import com.nhtc.pojo.Loaimon;
import com.nhtc.pojo.Monan;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface ThucDonService {
    List<Loaimon> getLoaiMon();
    Loaimon getLoaiMonByID(int loaiMonId);
    List<Monan> getMonAn(String params, int page);
    long countMonAn(String params);
}
