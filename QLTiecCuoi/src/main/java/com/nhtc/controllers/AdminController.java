/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Nhanvien;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.service.DichVuService;
import com.nhtc.service.NhanVienService;
import com.nhtc.service.SanhCuoiService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Minh
 */
@Controller
//@ControllerAdvice
@RequestMapping("/admin")
public class AdminController {
    
    @Autowired
    private DichVuService dichVuService;
    
    @Autowired
    private SanhCuoiService sanhCuoiService;
    
    @Autowired
    private NhanVienService nhanVienService;
    
    @GetMapping("/qldichvu")
    public String list(Model model) {
        model.addAttribute("dichvu", new Dichvu());
        return "qldichvu";
    }

    @PostMapping("/qldichvu")
    public String add(Model model, @ModelAttribute(value = "dichvu") @Valid Dichvu dichvu,
            BindingResult result) {
        if (!result.hasErrors()) {
            if(this.dichVuService.addDichVu(dichvu) == true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Wrong!!!");
        }
        
        return "dichvu";
    }
    
    
    @GetMapping("/nhanvien")
    public String listNhanVien(Model model) {
       model.addAttribute("nhanvien", new Nhanvien());
        return "nhanvien";
    }
    
    @PostMapping("/nhanvien")
    public String addNhanVien(Model model, @ModelAttribute(value = "nhanvien") @Valid Nhanvien nhanvien,
            BindingResult result) {
        if (!result.hasErrors()) {
            if(this.nhanVienService.addNhanVien(nhanvien)== true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Wrong!!!");
        }
        
        return "nhanvien";
    }
    
    @GetMapping("/qlsanhcuoi")
    public String listSanhCuoi(Model model) {
       model.addAttribute("sanhCuoi", new Sanhcuoi());
        return "qlsanhcuoi";
    }
    
    @PostMapping("/qlsanhcuoi")
    public String addSanh(Model model, @ModelAttribute(value = "sanhCuoi") @Valid Sanhcuoi sanhCuoi,
            BindingResult result) {
        if (!result.hasErrors()) {
            if(this.sanhCuoiService.addSanhCuoi(sanhCuoi) == true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Wrong!!!");
        }
        
        return "sanhcuoi";
    }
    
}
