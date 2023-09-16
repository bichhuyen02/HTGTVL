/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.service.CompanyService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ACER
 */
@RestController
public class ApiCompanyController {

    @Autowired
    private CompanyService companyService;

    @Autowired
    private JavaMailSender mailSender;

    @DeleteMapping("/addCompany/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "id") int id) {
        this.companyService.deleteCompany(id);
    }

    @PutMapping("/addCompany/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void updateActive(@PathVariable(value = "id") int id) {
        this.companyService.UpdateActive(id);
        Company com = this.companyService.getCompanyById(id);
//        SimpleMailMessage simpleMail = new SimpleMailMessage();
//        simpleMail.setTo(com.getMail());
//        simpleMail.setSubject("Thông báo");
//        simpleMail.setText(com.getName()+" đã được phép hoạt động");
//
//        mailSender.send(simpleMail);
    }
    
    @GetMapping("/api/companies/")
    @CrossOrigin
    public ResponseEntity<List<Company>> list(@RequestParam Map<String, String> params) {
        return new ResponseEntity<>(this.companyService.getCompanies(params), HttpStatus.OK);
    }
}
