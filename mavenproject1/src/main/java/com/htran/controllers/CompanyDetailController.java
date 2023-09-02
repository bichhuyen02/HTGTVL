/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.service.CompanyService;
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
public class CompanyDetailController {

    @Autowired
    private CompanyService companyService;

    @GetMapping("/companyDetail")
    public String companyDetail(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("companyDetails", new Company());

        return "companyDetail";
    }
}
