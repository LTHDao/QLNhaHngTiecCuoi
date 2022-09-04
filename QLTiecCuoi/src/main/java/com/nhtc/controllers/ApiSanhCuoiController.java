/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.service.SanhCuoiService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 *
 * @author Minh
 */
@RestController
@RequestMapping("/api")
public class ApiSanhCuoiController {
    
    @Autowired
    private SanhCuoiService sanhCuoiService;

    @GetMapping("/qlsanhcuoi")
    public ResponseEntity<List<Sanhcuoi>> getSanhcuoi(){
        return new ResponseEntity<>(this.sanhCuoiService.getSanhCuoi(), HttpStatus.OK);
    }
}
