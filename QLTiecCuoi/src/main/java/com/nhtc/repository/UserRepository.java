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
    List<User> getUsers(String username);

}
