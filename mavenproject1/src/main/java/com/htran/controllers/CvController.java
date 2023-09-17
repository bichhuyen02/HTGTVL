/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.pojo.Cv;
import com.htran.service.AccountService;
import com.htran.service.CompanyService;
import com.htran.service.CvService;
import com.htran.service.JobService;
import java.security.Principal;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
public class CvController {
    @Autowired
    private CvService cvService;
    
    @Autowired
    private JobService jobService;
    
    @Autowired
    private CompanyService companyService;
    
    @Autowired 
    private AccountService accService;

    @Autowired
    private Environment env;
    
    @RequestMapping("/cv")
    public String cv(Model model, Principal pricipal) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        Company com = this.companyService.getCompanyByAccId(acc.getId());
        model.addAttribute("jobC", this.jobService.getJobsByComId(com));
        model.addAttribute("cvs", this.cvService.getCv(com.getId()));
        model.addAttribute("cvT", this.cvService.getCvT(com.getId()));
        return "CV";
    }
    
}
