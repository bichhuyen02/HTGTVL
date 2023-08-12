/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.User;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface UserRepository {
    User getUserByUsername(String username);
    List<User> getUsers(Map<String, String> params);
    boolean addOrUpdateUser(User user);
    User getUserById(int id);
}
