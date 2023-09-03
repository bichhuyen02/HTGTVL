/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Account;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface AccountRepository {
    Account getAccountByUsername(String username);
    Account getAccountById(int id);
    List<Account> getAccountByActiveTrue();
    List<Account> getAccountByActiveFalse();
}
