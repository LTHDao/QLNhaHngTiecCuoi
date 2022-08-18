/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.service.LoaiSanhService;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hdao2
 */
@Controller
public class IndexController {
    @Autowired
    private LoaiSanhService loaiSanhService;

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam(value = "kw", defaultValue = "") String kw) {
//        List<String> loaiSanh = new ArrayList<>();
//        loaiSanh.add("Sanh White");
//        loaiSanh.add("Sanh Black");
//        loaiSanh.add("Sanh Blue");
//        loaiSanh.add("Sanh Green");

//        List<String> sanh = new ArrayList<>();
//        sanh.add("Sanh A");
//        sanh.add("Sanh B");
//        sanh.add("Sanh C");
//        sanh.add("Sanh D");
//        sanh.add("Sanh E");
//        sanh.add("Sanh F");
//        sanh.add("Sanh G");

        model.addAttribute("loaiSanh", this.loaiSanhService.getLoaiSanh());
//        model.addAttribute("loaiSanh", loaiSanh);
//        if (kw != null)
//            model.addAttribute("sanh", sanh.stream().filter(p -> p.contains(kw)).collect(Collectors.toList()));
//        else
//        model.addAttribute("sanh", sanh);

        return "index";
    }
}
