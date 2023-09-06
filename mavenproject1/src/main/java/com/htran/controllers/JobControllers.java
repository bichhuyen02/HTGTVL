/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.pojo.Job;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CompanyService;
import com.htran.service.JobService;
import com.htran.service.UserService;
import java.security.Principal;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
@PropertySource("classpath:configs.properties")
public class JobControllers {

    @Autowired
    private JobService jobService;

    @Autowired
    private AccountService accService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private Environment env;

    @GetMapping("/jobs")
    public String job(Model model, @RequestParam Map<String, String> params, Principal pricipal) {
        
        model.addAttribute("jobs", this.jobService.getJobs(params));
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        if(acc.getUserRole()=="ROLE_EMP"){
            Company com = this.companyService.getCompanyByAccId(acc.getId());
            model.addAttribute("jobsC", this.jobService.getJobsByComId(com));
        }else{
            User u = this.userService.getUserByAccId(acc.getId());
            model.addAttribute("jobs", this.jobService.getJobs(params));
        }
        
        
        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        int count = this.jobService.countJob();
        model.addAttribute("counter", Math.ceil(count*1.0/pageSize));
        
        return "jobs";
    }

}
