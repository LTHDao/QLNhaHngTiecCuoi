/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.service;

import com.nhtc.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Minh
 */
public interface UserService extends UserDetailsService{
    boolean addUser (User user);
    List<User> getUsers(String username);
    User getUserByUsername(String username);
    User getUserById(int id);
}
