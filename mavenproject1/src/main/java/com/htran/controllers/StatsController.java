/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.CategoryService;
import com.htran.service.StatsService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/admin")
public class StatsController {

    @Autowired
    private StatsService statsService;

    @Autowired
    private Environment env;

//    @RequestMapping("/stats")
//    public String stats(Model model, @RequestParam Map<String, String> params) {
//          model.addAttribute("stats", this.cateService.getCategories(params));
//        return "stats";
//    }
//    @RequestMapping("/monthStats")
//    public String monthStats(Model model, @RequestParam Map<String, String> params) {
////        model.addAttribute("monthStats", this.statsService.statsJob());
//        return "monthStats";
//    }

//    @RequestMapping("/quarterStats")
//    public String quarterStats(Model model, @RequestParam Map<String, String> params) {
//        model.addAttribute("quarterStats", this.statsService.statsJob());
////        return "quarterStats";
//    }

    @RequestMapping("/yearStats")
    public String yearStats(Model model, @RequestParam(value = "year", defaultValue = "2023") int year) {
         model.addAttribute("majorStats", this.statsService.statsMajor());
         model.addAttribute("revenues", this.statsService.statsRevenue(year));
        return "yearStats";
    }
    
    @GetMapping("/quarterStats")
    public String quarterStats(Model model, 
            @RequestParam(value = "quarter", defaultValue = "1") int quarter,
            @RequestParam(value = "year", defaultValue = "2023") int year) {
        model.addAttribute("quarterStats", this.statsService.quarterStats(quarter, year));
        
        return "quarterStats";
    }
}
