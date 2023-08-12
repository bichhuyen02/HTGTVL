/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.User;
import com.htran.service.UserService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
public class AddUserController {
     @Autowired
    private UserService userService;
    
    @GetMapping("/addUser")
    public String addUser(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addUsers", new User());
        
        return "addUser";
    }
    
    @GetMapping("/addUser/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addUsers", this.userService.getUserById(id));
        return "addUser";
    }
    
    @PostMapping("/addUser")
    public String add(@ModelAttribute(value = "addUsers") @Valid User u,
            BindingResult rs) {
        if (!rs.hasErrors()) {
            if (this.userService.addOrUpdateUser(u) == true) {
                return "redirect:/user";
            }
        }
        return "addUser";
    }
}
