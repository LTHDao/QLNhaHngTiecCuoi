/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.User;
import com.nhtc.service.UserService;
import java.util.ArrayList;
import java.util.List;
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
public class ApiNhanVienController {
 
    @Autowired
    private UserService userService;
    
    @GetMapping("/nhanvien")
     public ResponseEntity<List<User>> getUsers() {
        return new ResponseEntity<>(this.userService.getUserByUserRole(), HttpStatus.OK);
    }
    @PutMapping("/nhanvien/updateNhanVien")
    public boolean updateNhanVien(@RequestBody User user, HttpSession session) {
        try {
            this.userService.updateNhanVien(user);           
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
     
    @GetMapping("/nhanvien/{id}")
    public ResponseEntity<List<User>> getUserByID(@PathVariable(value = "id") int id) {
        List<User> user = new ArrayList<>();
        user.add(this.userService.getUserById(id));

        return new ResponseEntity<>(user, HttpStatus.OK);
    }
     
    @DeleteMapping("/nhanvien/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "id") int id) {
        this.userService.deleteUser(id);
    }

}
