/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.service;

import com.nhtc.pojo.PhanHoi;
import com.nhtc.pojo.User;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface PhanHoiService {
    List<PhanHoi> getPhanHoi();
    PhanHoi addPhanHoi(String noiDung, User user);
}
