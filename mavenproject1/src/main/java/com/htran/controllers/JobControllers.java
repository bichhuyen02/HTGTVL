/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Job;
import com.htran.service.JobService;
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
    private Environment env;

    @GetMapping("/jobs")
    public String job(Model model, @RequestParam Map<String, String> params) {
        
        model.addAttribute("jobs", this.jobService.getJobs(params));
        
        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        int count = this.jobService.countJob();
        model.addAttribute("counter", Math.ceil(count*1.0/pageSize));
        
        return "jobs";
    }

}
