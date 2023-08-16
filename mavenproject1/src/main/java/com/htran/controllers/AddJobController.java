/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Job;
import com.htran.service.CompanyService;
import com.htran.service.JobService;
import com.htran.service.LocationService;
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
public class AddJobController {

    @Autowired
    private JobService jobService;
    
    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private LocationService locationService;

    @GetMapping("/addJob")
    public String addjob(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addjobs", new Job());
//        model.addAttribute("locations", this.locationService.getLocations(params));
//        model.addAttribute("companies", this.companyService.getCompanies(params));
        
        return "addJob";
    }
    
    @GetMapping("/addJob/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addjobs", this.jobService.getJobById(id));
        return "addJob";
    }
    
    @PostMapping("/addJob")
    public String add(@ModelAttribute(value = "addjobs") @Valid Job j,
            BindingResult rs) {
        if (!rs.hasErrors()) {
            if (this.jobService.addOrUpdateJob(j) == true) {
                return "redirect:/jobs";
            }
        }
        return "addJob";
    }
}
