/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

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
import java.util.Map;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

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
    private Environment env;
    

    @ModelAttribute
    public void commAttr(Model model) {
        model.addAttribute("loaidichvu", this.dichVuService.getLoaiDichVu());
    }
    
    
    
    @RequestMapping("/")
    public String index(Model model,
            @RequestParam(value = "kw", defaultValue = "") String kw) {

//        List<String> menu = new ArrayList<>();
//        menu.add("Trang chủ");
//        menu.add("Sảnh tiệc");
//        menu.add("Dịch vụ");
//        menu.add("Thực đơn");
//        model.addAttribute("menu", menu);


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
        model.addAttribute("dichvu", this.dichVuService.getDichVu(loaiDichVuId,page));
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
        model.addAttribute("monan", this.thucDonService.getMonAn(loaimonId,page));
        model.addAttribute("counter", this.thucDonService.countMonAn(loaimonId));
        model.addAttribute("pageSize", env.getProperty("page.size"));
        model.addAttribute("loaimonId", loaimonId);

        return "thucdon";
    }   
}
