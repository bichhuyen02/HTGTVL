/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Account;
import com.htran.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Admin
 */
public interface AccountService extends UserDetailsService{
    Account getAccountByUsername(String username);
    boolean getAccountByUsern(String username);
    Account getAccountById(int id);
    boolean authAccount(String username, String password);
    List<Account> getAccountByActiveTrue();
    List<Account> getAccountByActiveFalse();
}
