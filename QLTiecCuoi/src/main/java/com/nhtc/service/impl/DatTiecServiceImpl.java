/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service.impl;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.SanhCuoiStore;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.DatTiecRepository;
import com.nhtc.service.DatTiecService;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hdao2
 */
@Service
public class DatTiecServiceImpl implements DatTiecService {

    @Autowired
    private DatTiecRepository datTiecRepository;

    @Override
    public Catochuc getCaById(int id) {
        return this.datTiecRepository.getCaById(id);
    }

    @Override
    public Khachhang addKhachHang(String tenKH, String sdt, String email) {
        return this.datTiecRepository.addKhachHang(tenKH, sdt, email);
    }

    @Override
    public List<Khachhang> getKhachHang() {
        return this.datTiecRepository.getKhachHang();
    }

    @Override
    public Hoadon addHoaDon(Dondattiec idDon, long tongTien) {
        return this.datTiecRepository.addHoaDon(idDon, tongTien);
    }

    @Override
    public Dondattiec addDonDatTiec(Map<String, String> params, SanhCuoiStore sanh, Date ngayToChuc, Date ngayDatHen) {
        return this.datTiecRepository.addDonDatTiec(params, sanh, ngayToChuc, ngayDatHen);
    }

    @Override
    public Phieudatdichvu addPhieuDv(Dondattiec idDon, DichVuStore dichVu) {
        return this.datTiecRepository.addPhieuDv(idDon, dichVu);
    }

    @Override
    public Phieudatmon addPhieuDatMon(Dondattiec idDon, Monan monAn) {
        return this.datTiecRepository.addPhieuDatMon(idDon, monAn);
    }

    @Override
    public List<Hoadon> getHoaDon() {
        return this.datTiecRepository.getHoaDon();
    }

    @Override
    public List<Dondattiec> getDonDatTiec() {
        return this.datTiecRepository.getDonDatTiec();
    }

    @Override
    public Dondattiec getDonDatTiecById(int id) {
        return this.datTiecRepository.getDonDatTiecById(id);
    }

    @Override
    public Khachhang getKhachHangById(int id) {
        return this.datTiecRepository.getKhachHangById(id);
    }

    @Override
    public Hoadon getHoaDonById(int id) {
        return this.datTiecRepository.getHoaDonById(id);
    }

    @Override
    public List<Phieudatmon> getPhieuDatMonByIdTiec(Dondattiec idDon) {
        return this.datTiecRepository.getPhieuDatMonByIdTiec(idDon);
    }

    @Override
    public List<Phieudatdichvu> getPhieuDatDichVuByIdTiec(Dondattiec idDon) {
        return this.datTiecRepository.getPhieuDatDichVuByIdTiec(idDon);
    }

}
