/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhtc.pojo.Dichvu;
import com.nhtc.service.DichVuService;
import java.io.IOException;
import javax.validation.Valid;
import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
//    
    @GetMapping("/qldichvu")
    public String list(Model model) {
        model.addAttribute("dichvu", new Dichvu());
        return "qldichvu";
    }

    @PostMapping("/qldichvu")
    public String add(Model model, @ModelAttribute(value = "dichvu") @Valid Dichvu dichvu,
            BindingResult result) {
        if (!result.hasErrors()) {
            if(this.dichVuService.addOrUpdate(dichvu) == true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Wrong!!!");
        }
        
        return "dichvu";
    }
}
