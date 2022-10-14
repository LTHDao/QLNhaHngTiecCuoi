/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository;

import com.nhtc.pojo.User;
import java.util.List;

/**
 *
 * @author Minh
 */
public interface UserRepository {
    boolean addUser (User user);
    boolean deleteUser(int id);
    List<User> getUsers(String username);
    List<User> getListUser();
    User getUserByUsername(String username);
    User getUserById(int id);
    List<User> getUserByUserRole();
    boolean updateNhanVien(User user);
    
}
