/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.controllers;

import com.nhtc.pojo.User;
import com.nhtc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Minh
 */
@Controller
public class UserController {
    @Autowired
    public UserService userDetailsService;
    
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @GetMapping("/register")
    public String registerView(Model model){
       model.addAttribute("user", new User());
        return "register";
    }
    
    
    
    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") User user){
        
        String errMsg = "";
        if (user.getPassword().equals(user.getConfirmPassword())){
            if (this.userDetailsService.addUser(user) == true)
                
                return "redirect:/login";
            else
                errMsg = "Da co loi xay ra!";
        }else
            errMsg = "Mat khau khong khop!";
        
        model.addAttribute("errMsg", errMsg);
        
        return "register";

    }
}
