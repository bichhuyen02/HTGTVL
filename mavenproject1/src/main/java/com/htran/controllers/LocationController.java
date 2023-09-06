/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.service.LocationService;
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
@RequestMapping("/admin")
public class LocationController {
    @Autowired
    private LocationService locationService;

    @Autowired
    private Environment env;
    
    @RequestMapping("/location")
    public String location(Model model, @RequestParam Map<String, String> params) {
          model.addAttribute("locations", this.locationService.getLocations(params));
        return "location";
    }
    
}
