/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Dichvu;

import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.pojo.User;
import com.nhtc.service.DichVuService;

import com.nhtc.service.SanhCuoiService;
import com.nhtc.service.ThongKeService;
import com.nhtc.service.UserService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    private ThongKeService thongKeService;
    
    @Autowired
    private SanhCuoiService sanhCuoiService;
    
    @Autowired
    private UserService userService;
    
    
    @GetMapping("/qldichvu")
    public String list(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("dichvu", new Dichvu());
        return "qldichvu";
    }

    @PostMapping("/qldichvu")
    public String add(Model model, @ModelAttribute(value = "dichvu") @Valid Dichvu dichvu,
            BindingResult result) {
        if (!result.hasErrors()) {
            if(this.dichVuService.addDichVu(dichvu) == true)
                return "redirect:/admin/qldichvu";
            else
                model.addAttribute("errMsg", "Wrong!!!");
        }
        
        return "dichvu";
    }
    
//    @PostMapping("/qldichvu/{idDichVu}")
//    public String update(Model model, @PathVariable(value = "baivietId") int idDichVu){
//        Dichvu dichvu = this.dichVuService.getDichVuById(idDichVu);
//        model.addAttribute("dichvu", dichvu);
//        return "baiviet_update";
//    }
    
    
    @RequestMapping("/qldichvu")
    public String timKiem(Model model,
            @RequestParam Map<String, String> params) {

        model.addAttribute("dichvu", this.dichVuService.getDichVu(params, 1));

        return "qldichvu";
        
    }
    
    @GetMapping("/nhanvien")
    public String listNhanVien(Model model) {
       model.addAttribute("nhanvien", new User());
        return "nhanvien";
    }
    
    @PostMapping("/nhanvien")
    public String addNhanVien(Model model, @ModelAttribute(value = "nhanvien") @Valid User nhanvien,
            BindingResult result) {
        String errMsg = "";
        if (nhanvien.getPassword().equals(nhanvien.getConfirmPassword())) {
            if (this.userService.addUser(nhanvien) == true) {
                return "redirect:/admin/nhanvien";
            } else {
                errMsg = "Da co loi xay ra!";
            }
        } else {
            errMsg = "Mat khau khong khop!";
        }
        model.addAttribute("errMsg", errMsg);
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
    
    @GetMapping("/thongKeMatDo")
    public String thongKeMatDo(Model model, @RequestParam(required = false) java.util.Map<String, String> params) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");

        Date fromDate = null;
        String from = params.getOrDefault("fromDate", null);
        if (from != null)
            try {
            fromDate = f.parse(from);
        } catch (ParseException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }

        Date toDate = null;
        String to = params.getOrDefault("toDate", null);
        if (to != null)
            try {
            toDate = f.parse(to);
        } catch (ParseException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }
        model.addAttribute("matDoThang", this.thongKeService.MatDoThang(fromDate, toDate));
        model.addAttribute("matDoQuy", this.thongKeService.MatDoQuy(fromDate, toDate));
        model.addAttribute("matDoNam", this.thongKeService.MatDoNam(fromDate, toDate));

        return "thongKeMatDo";
    }

    @GetMapping("/thongKeDoanhThu")
    public String thongKeDoanhThu(Model model, @RequestParam(required = false) java.util.Map<String, String> params) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");

        Date fromDate = null, toDate = null;;
        try {
            String from = params.getOrDefault("fromDate", null);
            if (from != null)
                fromDate = f.parse(from);

            String to = params.getOrDefault("toDate", null);
            if (to != null) 
                toDate = f.parse(to);
            
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        model.addAttribute("doanhThuThang", this.thongKeService.DoanhThuThang(fromDate, toDate));
        model.addAttribute("doanhThuQuy", this.thongKeService.DoanhThuQuy(fromDate, toDate));
        model.addAttribute("doanhThuNam", this.thongKeService.DoanhThuNam(fromDate, toDate));

        return "thongKeDoanhThu";
    }
}
