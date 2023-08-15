/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.CompanyService;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
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
public class CompanyController {
    @Autowired
    private CompanyService companyService;

    @Resource
    private Environment env;
    
    @RequestMapping("/companies")
    public String major(Model model, @RequestParam Map<String, String> params) {
          model.addAttribute("companies", this.companyService.getCompanies(params));
        return "companies";
    }
}
