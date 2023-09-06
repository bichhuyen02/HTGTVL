/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CvService;
import com.htran.service.JobService;
import com.htran.service.UserService;
import java.security.Principal;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Admin
 */
@Controller
public class ApplyCVController {
    @Autowired
    private CvService cvService;
    
    @Autowired
    private AccountService accService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private JobService jobService;
    
    @GetMapping("/jobDetail/{id}/applyCv")
    public String addCv(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addCv", new Cv());
        model.addAttribute("jobDetails", this.jobService.getJobById(id));  

        return "applyCv";
    }           
    
    @PostMapping("/jobDetail/{id}/applyCv")
    public String add(@ModelAttribute(value = "addCv") Cv cv,
            @PathVariable(value = "id") int id, Principal pricipal) {
//        if (!rs.hasErrors()) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        User u = new User();
        u = this.userService.getUserByAccId(acc.getId());
        cv.setUserId(u);
        Job j = this.jobService.getJobById(id);
        cv.setJobId(j);

        if (this.cvService.addCv(cv) == true) {
            return "redirect:/";
        }
        //}
        return "applyCv";
    }
    
//    @RequestMapping(value = "/applyCv", method = RequestMethod.GET)
//    public String handleNext(@RequestMapping("next") String next){ 
//        return "redirect:"+next;
//    }
}
