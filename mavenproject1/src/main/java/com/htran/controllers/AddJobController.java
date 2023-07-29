/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Job;
import com.htran.service.CompanyService;
import com.htran.service.LocationService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
public class AddJobController {

    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private LocationService locationService;

    @GetMapping("/addJob")
    public String addjob(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addjobs", new Job());
        model.addAttribute("locations", this.locationService.getLocations(params));
         model.addAttribute("companies", this.companyService.getCompanies(params));
        
        return "addJob";
    }
}
