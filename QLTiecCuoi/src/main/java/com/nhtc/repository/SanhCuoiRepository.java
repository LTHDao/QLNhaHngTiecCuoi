/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.Sanhcuoi;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface SanhCuoiRepository {
    List<Sanhcuoi> getSanhCuoi();
    
    boolean addSanhCuoi(Sanhcuoi sanhCuoi);
    Sanhcuoi getSanhCuoiById(int idSanh);
}
