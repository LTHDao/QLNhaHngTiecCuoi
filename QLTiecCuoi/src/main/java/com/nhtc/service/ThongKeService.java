/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.service;

import java.util.Date;
import java.util.List;

/**
 *
 * @author hdao2
 */
public interface ThongKeService {
    List<Object[]> MatDoThang(Date fromDate, Date toDate);
    List<Object[]> MatDoQuy(Date fromDate, Date toDate);
    List<Object[]> MatDoNam(Date fromDate, Date toDate);
    List<Object[]> DoanhThuThang(Date fromDate, Date toDate);
    List<Object[]> DoanhThuQuy(Date fromDate, Date toDate);
    List<Object[]> DoanhThuNam(Date fromDate, Date toDate);
}
