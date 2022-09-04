/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Dichvu_;
import com.nhtc.service.DichVuService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Minh
 */
@RestController
@RequestMapping("/api")
public class ApiDichVuController {
    
    @Autowired
    private DichVuService dichVuService;
    
    @GetMapping("/qldichvu")
    public ResponseEntity<List<Dichvu>> getDichvu(){
        return new ResponseEntity<>(this.dichVuService.getDichVu(null, 0), HttpStatus.OK);
    }
    
    @DeleteMapping("/qldichvu/{idDichVu}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "idDichVu") int id) {
        this.dichVuService.deleteDichVu(id);
    }
    
//    @PutMapping("/qldichvu/{idDichVu}")
//    @ResponseStatus(HttpStatus.OK)
//    public void update(@PathVariable(value = "idDichVu") int id){
//        
//    }
}

