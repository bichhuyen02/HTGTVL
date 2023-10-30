/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htran.pojo.Account;
import com.htran.pojo.User;
import com.htran.repository.AccountRepository;
import com.htran.repository.UserRepository;
import com.htran.service.UserService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Admin
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepo;

    @Autowired
    private Cloudinary cloudinary;

    @Autowired
    public BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private SimpleDateFormat simpleDateFormat;

    @Autowired
    private AccountRepository accRepo;

    @Override
    public List<User> getUsers(Map<String, String> params) {
        return this.userRepo.getUsers(params);
    }

    @Override
    @Transactional
    public boolean addOrUpdateUser(User user) {
        Date currentDate = new Date();
        if (user.getId() == null) {
            user.setPassword(this.passwordEncoder.encode(user.getPassword()));
        } else {
            String pass = this.accRepo.getAccountById(user.getId()).getPassword();
            if (pass != user.getPassword()) {
                user.setPassword(this.passwordEncoder.encode(user.getPassword()));
            }
        }
        if (!user.getFile().isEmpty()) {
            try {
                Map res = this.cloudinary.uploader().upload(user.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                user.setAvatar(res.get("secure_url").toString());
                user.setBirthDate(this.simpleDateFormat
                        .parse(this.simpleDateFormat.format(user.getBirthDate())));

            } catch (IOException ex) {
                Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ParseException ex) {
                Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return this.userRepo.addOrUpdateUser(user);
    }

    @Override
    public User getUserById(int id) {
        return this.userRepo.getUserById(id);
    }

    @Override
    public boolean deleteUser(int id) {
        return this.userRepo.deleteUser(id);
    }

    @Override
    public User getUserByAccId(int id) {
        return this.userRepo.getUserByAccId(id);
    }

    @Override
    public boolean updateUser(User user) {
        try {
            user.setBirthDate(this.simpleDateFormat
                    .parse(this.simpleDateFormat.format(user.getBirthDate())));
        } catch (ParseException ex) {
            Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return this.userRepo.updateUser(user);
    }
}
