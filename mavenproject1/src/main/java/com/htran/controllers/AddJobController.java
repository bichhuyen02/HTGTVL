/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.pojo.Job;
import com.htran.service.AccountService;
import com.htran.service.CompanyService;
import com.htran.service.JobService;
import com.htran.service.LocationService;
import com.htran.service.PositionService;
import java.security.Principal;
import java.util.Date;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
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
public class AddJobController {

    @Autowired
    private JobService jobService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private LocationService locationService;

    @Autowired
    private PositionService posiService;

    @Autowired
    private AccountService accService;

    @GetMapping("/addJob")
    public String addjob(Model model, @RequestParam Map<String, String> params,
            Principal pricipal) {
        String role = "ROLE_EMP";
        model.addAttribute("addjobs", new Job());
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        if (acc.getUserRole().equals(role)) {
            Company com = this.companyService.getCompanyByAccId(acc.getId());
            model.addAttribute("jobsC", this.jobService.getJobsByComId(com));
        }
        model.addAttribute("positions", this.posiService.getPositions(params));

        return "addJob";
    }

    @GetMapping("/addJob/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addjobs", this.jobService.getJobById(id));
        return "addJob";
    }

    @PostMapping("/addJob")
    public String add(Model model, @ModelAttribute(value = "addjobs") @Valid Job j,
            BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (currentDate.compareTo(j.getOutOffTime()) < 0) {
            if (!rs.hasErrors()) {
                if (this.jobService.addOrUpdateJob(j) == true) {
                    return "redirect:/jobs";
                }
            }
        } else {
            errMsg = errMsg + "Ngày hết hạn không được nhỏ hơn ngày hiện tại(^-^) !!!";
        }
        return "addJob";
    }
}
