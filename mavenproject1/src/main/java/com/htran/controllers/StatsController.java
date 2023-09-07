/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.CategoryService;
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
    private CategoryService cateService;

    @Autowired
    private Environment env;
    
//    @RequestMapping("/stats")
//    public String stats(Model model, @RequestParam Map<String, String> params) {
//          model.addAttribute("stats", this.cateService.getCategories(params));
//        return "stats";
//    }
    
    @RequestMapping("/monthStats")
    public String monthStats(Model model, @RequestParam Map<String, String> params) {
          model.addAttribute("monthStats", this.cateService.getCategories(params));
        return "monthStats";
    }
    
    @RequestMapping("/quarterStats")
    public String quarterStats(Model model, @RequestParam Map<String, String> params) {
          model.addAttribute("quarterStats", this.cateService.getCategories(params));
        return "quarterStats";
    }
    
    @RequestMapping("/yearStats")
    public String yearStats(Model model, @RequestParam Map<String, String> params) {
          model.addAttribute("yearStats", this.cateService.getCategories(params));
        return "yearStats";
    }
}
