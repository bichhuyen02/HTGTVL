/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.components.JwtService;
import com.htran.pojo.Account;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.UserService;
import java.security.Principal;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Admin
 */
@RestController
public class ApiUserController {
    @Autowired
    private UserService userService;
    
    @Autowired
    private AccountService accService;
    
    @Autowired
    private JwtService jwtService;
    
    @DeleteMapping("/addUser/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "id") int id) {
        this.userService.deleteUser(id);
    }
    
    @GetMapping("/api/user/")
    @CrossOrigin
    public ResponseEntity<List<User>> list(@RequestParam Map<String, String> params) {
        return new ResponseEntity<>(this.userService.getUsers(params), HttpStatus.OK);
    }
    
    @PostMapping("/api/login/")
    @CrossOrigin
    public ResponseEntity<String> login(@RequestBody Account acc) {
        if (this.accService.authAccount(acc.getUsername(), acc.getPassword()) == true) {
            String token = this.jwtService.generateTokenLogin(acc.getUsername());
            return new ResponseEntity<>(token, HttpStatus.OK);
        }
        return new ResponseEntity<>("error", HttpStatus.BAD_REQUEST);
    }

    @GetMapping(path = "/api/current-user/", produces = MediaType.APPLICATION_JSON_VALUE)
    @CrossOrigin
    public ResponseEntity<Account> details(Principal a) {
        Account acc = this.accService.getAccountByUsername(a.getName());
        return new ResponseEntity<>(acc, HttpStatus.OK);
    }
    
    @PostMapping(path = "/api/users/", 
            consumes = {MediaType.MULTIPART_FORM_DATA_VALUE}, 
            produces = {MediaType.APPLICATION_JSON_VALUE})
    @CrossOrigin
    public ResponseEntity<User> addUser(@RequestParam Map<String, String> params, @RequestPart MultipartFile avatar) {
        User user = this.userService.addUser(params, avatar);
        return new ResponseEntity<>(user, HttpStatus.CREATED);
    }
}
