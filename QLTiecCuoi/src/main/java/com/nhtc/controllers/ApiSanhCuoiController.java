/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.pojo.User;
import com.nhtc.service.SanhCuoiService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
public class ApiSanhCuoiController {
    
    @Autowired
    private SanhCuoiService sanhCuoiService;

    @GetMapping("/qlsanhcuoi")
    public ResponseEntity<List<Sanhcuoi>> getSanhcuoi(){
        return new ResponseEntity<>(this.sanhCuoiService.getSanhCuoi(), HttpStatus.OK);
    }
    
    @GetMapping("/qlsanhcuoi/{sanhcuoiID}")
    public ResponseEntity<List<Sanhcuoi>> getSanhcuoi(@PathVariable(value = "sanhcuoiID") int id){
        List<Sanhcuoi> s = new ArrayList<>();
        s.add(this.sanhCuoiService.getSanhCuoiById(id));
        return new ResponseEntity<>(s, HttpStatus.OK);
    }
    
    @DeleteMapping("/qlsanhcuoi/{sanhcuoiID}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "sanhcuoiID") int id) {
        boolean updateStore = this.sanhCuoiService.updateSanhStore(id);
        if (updateStore == true)
            this.sanhCuoiService.deleteSanhCuoi(id);
    }
    
    @PutMapping("/qlsanhcuoi/updateSanhcuoi")
    public boolean updateSanhcuoi(@RequestBody Sanhcuoi sanhcuoi, HttpSession session) {
        try {
            this.sanhCuoiService.updateSanhCuoi(sanhcuoi);           
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
