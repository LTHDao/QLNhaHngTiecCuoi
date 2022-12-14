/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.service;

import com.nhtc.pojo.SanhCuoiStore;
import com.nhtc.pojo.Sanhcuoi;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface SanhCuoiService {
    List<Sanhcuoi> getSanhCuoi();
    
    boolean addOrUpdateSanhCuoi(Sanhcuoi sanhCuoi);
    boolean deleteSanhCuoi(int id);
    boolean updateSanhCuoi(Sanhcuoi sanhCuoi);
    boolean updateSanhStore(int id);
    Sanhcuoi getSanhCuoiById(int idSanh);
    
    List<SanhCuoiStore> getStoreBySanh(int idSanh);
}
