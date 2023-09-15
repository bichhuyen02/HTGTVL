/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Account;
import com.htran.pojo.User;
import com.htran.repository.AccountRepository;
import com.htran.service.AccountService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service("userDetailsService")
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountRepository accRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account u = this.accRepo.getAccountByUsername(username);
        if (u.getActive() == true) {
            if (u == null) {
                throw new UsernameNotFoundException("Invalid user!");
            }

            Set<GrantedAuthority> authorities = new HashSet<>();
            authorities.add(new SimpleGrantedAuthority(u.getUserRole()));

            return new org.springframework.security.core.userdetails.User(
                    u.getUsername(), u.getPassword(), authorities);
        }
        return (UserDetails) new org.springframework.security.core.userdetails.UsernameNotFoundException("Bạn chưa có quyền!!!");
    }

    @Override
    public Account getAccountByUsername(String username) {
        return this.accRepo.getAccountByUsername(username);
    }

    @Override
    public Account getAccountById(int id) {
        return this.accRepo.getAccountById(id);
    }

    @Override
    public List<Account> getAccountByActiveTrue() {
        return this.accRepo.getAccountByActiveTrue();
    }

    @Override
    public List<Account> getAccountByActiveFalse() {
        return this.accRepo.getAccountByActiveFalse();
    }
    
    @Override
    public boolean authAccount(String username, String password) {
       return this.accRepo.authAccount(username, password);
    }

    @Override
    public boolean getAccountByUsern(String username) {
       return this.accRepo.getAccountByUsern(username);
    }
}
