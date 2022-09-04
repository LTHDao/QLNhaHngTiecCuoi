/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.PhanHoi;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.service.DatTiecService;
import com.nhtc.service.DichVuService;
import com.nhtc.service.SanhCuoiService;
import com.nhtc.service.ThucDonService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author hdao2
 */
@Controller
@Transactional
@RequestMapping("/api")
public class ApiDatTiecCuoiController {

    @Autowired
    private SanhCuoiService sanhCuoiService;
    @Autowired
    private ThucDonService thucDonService;
    @Autowired
    private DichVuService dichVuService;
    @Autowired
    private DatTiecService datTiecService;

    @GetMapping("/khachhang")
    public ResponseEntity<List<Khachhang>> listKhachHang() {
        return new ResponseEntity<>(this.datTiecService.getKhachHang(), HttpStatus.OK);
    }

    @GetMapping("/dondattiec")
    public ResponseEntity<List<Dondattiec>> listDonDatTiec() {
        return new ResponseEntity<>(this.datTiecService.getDonDatTiec(), HttpStatus.OK);
    }

    @PostMapping(path = "/dondattiec", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Dondattiec> addDonDatTiec(@RequestBody Map<String, String> params) {
        try {
            int idSanh = Integer.parseInt(params.get("idSanh"));
            Sanhcuoi sanh = this.sanhCuoiService.getSanhCuoiById(idSanh);
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            String date = params.get("ngayToChuc");
            Date ngayToChuc = formatter.parse(date);

            Dondattiec p = this.datTiecService.addDonDatTiec(params, sanh, ngayToChuc);
            
//            Phieudatdichvu pdv = this.datTiecService.addPhieuDv(p, dichVu);

            return new ResponseEntity<>(p, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
    
    @GetMapping("/phieudatdichvu")
    public ResponseEntity<List<Phieudatdichvu>> listPhieuDatDichVu() {
        return new ResponseEntity<>(this.dichVuService.getPhieuDatDichVu(), HttpStatus.OK);
    }

    @PostMapping(path = "/phieudatdichvu", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Phieudatdichvu> addPhieuDatDichVu(@RequestBody Map<String, String> params) {
        try {
            int idDon = Integer.parseInt(params.get("idDonDatTiec"));
            Dondattiec donDatTiec = this.datTiecService.getDonDatTiecById(idDon);
            
            int idDichVu = Integer.parseInt(params.get("idDichVu"));
            Dichvu dichVu = this.dichVuService.getDichVuById(idDichVu);
            
            Phieudatdichvu pdv = this.datTiecService.addPhieuDv(donDatTiec, dichVu);
            
            return new ResponseEntity<>(pdv, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
    
    @GetMapping("/phieudatmon")
    public ResponseEntity<List<Phieudatmon>> listPhieuDatMon() {
        return new ResponseEntity<>(this.thucDonService.getPhieuDatMon(), HttpStatus.OK);
    }
    
    @PostMapping(path = "/phieudatmon", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Phieudatmon> addPhieuDatMon(@RequestBody Map<String, String> params) {
        try {
            int idDon = Integer.parseInt(params.get("idDonDatTiec"));
            Dondattiec donDatTiec = this.datTiecService.getDonDatTiecById(idDon);
            
            int idMonAn = Integer.parseInt(params.get("idMonAn"));
            Monan monAn = this.thucDonService.getMonAnById(idMonAn);
            
            Phieudatmon pdm = this.datTiecService.addPhieuDatMon(donDatTiec, monAn);
            
            return new ResponseEntity<>(pdm, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
    
    @GetMapping("/hoadon")
    public ResponseEntity<List<Hoadon>> listHoaDon() {
        return new ResponseEntity<>(this.datTiecService.getHoaDon(), HttpStatus.OK);
    }
    
    @PostMapping(path = "/hoadon", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Hoadon> addHoaDon(@RequestBody Map<String, String> params) {
        try {
            int idDon = Integer.parseInt(params.get("idDonDatTiec"));
            Dondattiec donDatTiec = this.datTiecService.getDonDatTiecById(idDon);
            long tongGia = Long.parseLong(params.get("tongGia"));
            
            Hoadon hd = this.datTiecService.addHoaDon(donDatTiec, tongGia);
            return new ResponseEntity<>(hd, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
    
}
