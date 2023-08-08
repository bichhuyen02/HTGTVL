/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.service.CompanyService;
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
public class AddCompanyController {

    @Autowired
    private CompanyService companyService;

    @GetMapping("/addCompany")
    public String addCompany(Model model) {
        model.addAttribute("addCompanies", new Company());

        return "addCompany";
    }

    @GetMapping("/addCompany/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addCompanies", this.companyService.getCompanyById(id));
        return "addCompany";
    }
    
    @PostMapping("/addCompany")
    public String add(@ModelAttribute(value = "addCompanies") @Valid Company c,
            BindingResult rs) {
        if (!rs.hasErrors()) {
            if (this.companyService.addOrUpdateCompany(c) == true) {
                return "redirect:/companies";
            }
        }
        return "addCompany";
    }
}
