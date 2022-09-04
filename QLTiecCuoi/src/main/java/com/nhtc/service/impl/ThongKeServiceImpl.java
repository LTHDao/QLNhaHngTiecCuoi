/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nhtc.repository.ThongKeRepository;
import com.nhtc.service.ThongKeService;

/**
 *
 * @author hdao2
 */
@Service
public class ThongKeServiceImpl implements ThongKeService {
    @Autowired
    private ThongKeRepository thongKeRepository;

//    @Override
//    public List<Object[]> countDonDatTiec() {
//        return this.donDatTiecRepository.countDonDatTiec();
//    }

//    @Override
//    public List<Dondattiec> countD() {
//        return this.donDatTiecRepository.countD();
//    }

    @Override
    public List<Object[]> MatDoThang(Date fromDate, Date toDate) {
        return this.thongKeRepository.MatDoThang(fromDate, toDate);
    }

    @Override
    public List<Object[]> MatDoQuy(Date fromDate, Date toDate) {
        return this.thongKeRepository.MatDoQuy(fromDate, toDate);
    }

    @Override
    public List<Object[]> MatDoNam(Date fromDate, Date toDate) {
        return this.thongKeRepository.MatDoNam(fromDate, toDate);
    }

    @Override
    public List<Object[]> DoanhThuThang(Date fromDate, Date toDate) {
        return this.thongKeRepository.DoanhThuThang(fromDate, toDate);
    }

    @Override
    public List<Object[]> DoanhThuQuy(Date fromDate, Date toDate) {
        return this.thongKeRepository.DoanhThuQuy(fromDate, toDate);
    }

    @Override
    public List<Object[]> DoanhThuNam(Date fromDate, Date toDate) {
        return this.thongKeRepository.DoanhThuNam(fromDate, toDate);
    }
}
