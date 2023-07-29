/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Category;
import com.htran.service.CategoryService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
public class AddCateController {
    @Autowired
    private CategoryService cateService;
    
    @GetMapping("/addCate")
    public String addCate(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addCates", new Category());
        
        return "addCate";
    }
    
    @PostMapping("/addCate")
    public String add(@ModelAttribute(value = "addCates") Category c) {
        if (this.cateService.addCategory(c) == true)
            return "redirect:/categories";
        
        return "addCate";
    }
}
