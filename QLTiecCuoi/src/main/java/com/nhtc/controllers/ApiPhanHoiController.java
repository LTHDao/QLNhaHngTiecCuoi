/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.PhanHoi;
import com.nhtc.service.PhanHoiService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hdao2
 */
@RestController
@RequestMapping("/api")
public class ApiPhanHoiController {

    @Autowired
    private PhanHoiService phanHoiService;

    @GetMapping("/phanhoi")
    public ResponseEntity<List<PhanHoi>> getPhanHoi() {
        return new ResponseEntity<>(this.phanHoiService.getPhanHoi(), HttpStatus.OK);
    }

    @PostMapping(path = "/phanhoi", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<PhanHoi> addPhanHoi(@RequestBody Map<String, String> params) {
        try {
            String noiDung = params.get("noiDung");
            PhanHoi p = this.phanHoiService.addPhanHoi(noiDung);

            return new ResponseEntity<>(p, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
}
