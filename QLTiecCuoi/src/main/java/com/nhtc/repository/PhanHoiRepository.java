/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.PhanHoi;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface PhanHoiRepository {
    List<PhanHoi> getPhanHoi();
    PhanHoi addPhanHoi(String noiDung);
}
