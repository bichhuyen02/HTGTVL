/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Comment;
import com.htran.pojo.Company;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CommentService;
import com.htran.service.CompanyService;
import com.htran.service.UserService;
import java.security.Principal;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class CompanyDetailController {

    @Autowired
    private CommentService cmtService;
    
    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private AccountService accService;
    
    @Autowired
    private UserService userService;

    @GetMapping("/companyDetail/{id}")
    public String companyDetail(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("cmt", new Comment());
        model.addAttribute("copaDetails", this.companyService.getCompanyById(id));
        Company com = this.companyService.getCompanyById(id);
        model.addAttribute("cmts",this.cmtService.getCommentsbyCompanyId(com));
        
        return "companyDetail";
    }
    
    @PostMapping("/companyDetail/{id}")
    public String add(@ModelAttribute(value = "cmt") Comment cmt,
            @PathVariable(value = "id") int id, Principal pricipal) {
//        if (!rs.hasErrors()) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        Company com = this.companyService.getCompanyById(id);
        User u = new User();
        u = this.userService.getUserByAccId(acc.getId());
        cmt.setUserId(u);
        cmt.setCompanyId(com);
        if (this.cmtService.addComment(cmt) == true) {
            return "redirect:/companyDetail/{id}";
        }
        //}
        return "companyDetail";
    }
}
