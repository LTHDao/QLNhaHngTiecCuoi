/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.Sanhcuoi;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 *
 * @author hdao2
 */
public interface DatTiecRepository {
    Catochuc getCaById(int id);
    Hoadon addHoaDon(Dondattiec idDon, long tongTien);
    Khachhang addKhachHang(String tenKH, String sdt, String email);
    Dondattiec addDonDatTiec(Map<String, String> params, Sanhcuoi sanh, 
            Date ngayToChuc);
    Phieudatdichvu addPhieuDv(Dondattiec idDon, Dichvu dichVu);
    Phieudatmon addPhieuDatMon(Dondattiec idDon, Monan monAn);
    List<Khachhang> getKhachHang();
    List<Hoadon> getHoaDon();
    List<Dondattiec> getDonDatTiec();
    Dondattiec getDonDatTiecById(int id);
}
