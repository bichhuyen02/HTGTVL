/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.CategoryService;
import com.htran.service.LocationService;
import com.htran.service.StatsService;
import com.htran.service.UserService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
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
public class AdminController {
     @Autowired
    private LocationService locationService;

    @Autowired
    private StatsService statsService;

    @Autowired
    private UserService userService;
    
    @Autowired
    private CategoryService cateService;

    //--------------------------------------location---------------------------------------
    @RequestMapping("/location")
    public String location(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("locations", this.locationService.getLocations(params));
        return "location";
    }
    //------------------------------------end location-------------------------------------

    //----------------------------------------user-----------------------------------------
    @GetMapping("/user")
    public String user(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("users", this.userService.getUsers(params));
        return "users";
    }
    //--------------------------------------end user----------------------------------------

    //--------------------------------------stats-------------------------------------------
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
    //-------------------------------------end stats--------------------------------------

    //--------------------------------------category------------------------------------------
    @RequestMapping("/categories")
    public String major(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("categories", this.cateService.getCategories(params));
        return "categories";
    }
    //------------------------------------end category----------------------------------------
}
