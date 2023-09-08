/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Location;
import com.htran.service.LocationService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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
public class AddLocationController {
     @Autowired
    private LocationService locationService;
     
     @Autowired
    private JavaMailSender mailSender;
    
    @GetMapping("/addLocation")
    public String addLocation(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addLocations", new Location());
        
        return "addLocation";
    }
    
    @GetMapping("/addLocation/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addLocations", this.locationService.getLocationById(id));
        return "addLocation";
    }
    
    @PostMapping("/addLocation")
    public String add(@ModelAttribute(value = "addLocations") @Valid Location lctn,  
            BindingResult rs) {
       //        if (!rs.hasErrors()) {
            if (this.locationService.addOrUpdateLocation(lctn) == true) {
                  SimpleMailMessage simpleMail = new SimpleMailMessage();
                simpleMail.setTo("2051050017anh@ou.edu.vn");
                simpleMail.setSubject("Thông báo");
                simpleMail.setText(lctn.getName());
        
                mailSender.send(simpleMail);
                return "redirect:/admin/location";
            }
//        }
        return "addLocation";
    }
}
