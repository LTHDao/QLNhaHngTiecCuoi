/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.User;
import com.nhtc.service.DatTiecService;
import com.nhtc.service.DichVuService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.nhtc.service.SanhCuoiService;
import com.nhtc.service.ThucDonService;
import com.nhtc.service.UserService;
import java.util.Map;
import org.springframework.core.env.Environment;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author hdao2
 */
@Controller
@ControllerAdvice
public class IndexController {

    @Autowired
    private SanhCuoiService sanhCuoiService;
    @Autowired
    private ThucDonService thucDonService;
    @Autowired
    private DichVuService dichVuService;
    @Autowired
    private UserService userService;
    @Autowired
    private DatTiecService datTiecService;
    @Autowired
    private Environment env;

    @ModelAttribute
    public void commAttr(Model model) {
        model.addAttribute("loaidichvu", this.dichVuService.getLoaiDichVu());
    }

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam(value = "kw", defaultValue = "") String kw) {

        String username = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();

            User user = this.userService.getUserByUsername(username);

            model.addAttribute("current", user);
        } 
        return "index";

    }

    @GetMapping("/sanhcuoi")
    public String sanhcuoi(Model model) {
        List<String> chiTiecSanh = new ArrayList<>();
        chiTiecSanh.add("Sảnh");
        chiTiecSanh.add("Diện tích");
        chiTiecSanh.add("Số lượng bàn (tối đa)");
        chiTiecSanh.add("Giá tối thiểu");

        model.addAttribute("chiTiecSanh", chiTiecSanh);
        model.addAttribute("sanhCuoi", this.sanhCuoiService.getSanhCuoi());
        return "sanhcuoi";
    }

    @GetMapping("/dichvu")
    public String dichvu(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String loaiDichVuId = params.getOrDefault("loaidichvuID", null);

        model.addAttribute("loaidichvu", this.dichVuService.getLoaiDichVu());
        model.addAttribute("dichvu", this.dichVuService.getDichVu(params, page));
        model.addAttribute("counter", this.dichVuService.countDichVu(loaiDichVuId));
        model.addAttribute("pageSize", env.getProperty("page.size"));
        model.addAttribute("loaiDichVuId", loaiDichVuId);

        return "dichvu";
    }

    @GetMapping("/thucdon")
    public String thucdon(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String loaimonId = params.getOrDefault("loaimonID", null);

        model.addAttribute("loaimon", this.thucDonService.getLoaiMon());
        model.addAttribute("monan", this.thucDonService.getMonAn(loaimonId, page));
        model.addAttribute("counter", this.thucDonService.countMonAn(loaimonId));
        model.addAttribute("pageSize", env.getProperty("page.size"));
        model.addAttribute("loaimonId", loaimonId);

        return "thucdon";
    }

    @GetMapping("/phanHoi")
    public String phanHoi(Model model) {
//        
//        model.addAttribute("phanHoi", this.phanHoiService.getPhanHoi());

        return "phanHoi";
    }

    @GetMapping("/tieccuoi")
    public String datTiecCuoi(Model model) {

        String err = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = null;
        if (principal instanceof UserDetails) {
            String username = ((UserDetails) principal).getUsername();
            user = this.userService.getUserByUsername(username);
        } else {
            err = "Chưa đăng nhập! Hãy đăng nhập để tiếp tục";
        }

        model.addAttribute("sanhCuoi", this.sanhCuoiService.getSanhCuoi());
        model.addAttribute("loaidichvu", this.dichVuService.getLoaiDichVu());
        model.addAttribute("dichvu", this.dichVuService.getDichVu(null, 0));
        model.addAttribute("loaimon", this.thucDonService.getLoaiMon());
        model.addAttribute("monan", this.thucDonService.getMonAn(null, 0));
        model.addAttribute("khachHang", user);
        model.addAttribute("err", err);

        return "datTiecCuoi";
    }

    @GetMapping("/thanhToan/{hoadonId}")
    public String thanhToan(Model model, @PathVariable(value = "hoadonId") int id) {
        Hoadon h = this.datTiecService.getHoaDonById(id);
        Dondattiec d = h.getIdTiecCuoi();
        model.addAttribute("dsMonAn", this.datTiecService.getPhieuDatMonByIdTiec(d));
        model.addAttribute("dsDichVu", this.datTiecService.getPhieuDatDichVuByIdTiec(d));
        model.addAttribute("hoaDon", this.datTiecService.getHoaDonById(id));
        return "thanhToan";
    }
}
