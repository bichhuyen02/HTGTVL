/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.CategoryService;
import com.htran.service.CompanyService;
import com.htran.service.JobService;
import com.htran.service.LocationService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
@ControllerAdvice
public class IndexController {
    @Autowired
    private JobService jobService;
    
     @Autowired
    private LocationService locationService;
    
    @Autowired
    private CompanyService companyService;
    
     @ModelAttribute
    public void commonAttr(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("companies", this.companyService.getCompanies(params));
        model.addAttribute("locations", this.locationService.getLocations(params));
        model.addAttribute("jobs", this.jobService.getJobs(params));
    }
    
    @GetMapping("/")
    public String index(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("jobs", this.jobService.getJobs(params));
        return "index";
    }
   
}
