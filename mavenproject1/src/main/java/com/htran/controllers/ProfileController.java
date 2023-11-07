/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.pojo.User;
import com.htran.service.CompanyService;
import com.htran.service.UserService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Admin
 */
@Controller
public class ProfileController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private CompanyService compaService;

    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/profile/{id}")
    public String profile(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("u", userService.getUserById(id));
        return "profiles";
    }

    @PostMapping("/profile/{id}")
    public String add(Model model, @ModelAttribute(value = "u") User u) {
        String errMsg = "";
        Date currentDate = new Date();
        if (currentDate.compareTo(u.getBirthDate()) > 0) {
            if (u.getPhone().length() == 10 && u.getPhone().codePointAt(0) == 48) {
                if (this.userService.updateUser(u) == true) {
                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                    simpleMail.setTo(u.getMail());
                    simpleMail.setSubject("Thông báo");
                    simpleMail.setText("Thông tin của bạn đã được cập nhật");

                    mailSender.send(simpleMail);
                    return "redirect:/profile/{id}";
                }
            } else {
                errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
            }
        } else {
            errMsg = errMsg + "Ngày sinh không thể lớn hơn ngày hiện tại (^-^) !!!";
        }
        model.addAttribute(
                "errMsg", errMsg);
        return "profiles";
    }

    @GetMapping("/profileCompany/{id}")
    public String profileCompany (Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("c", this.compaService.getCompanyById(id));
        return "profileCompany";
    }
    
    @PostMapping("/profileCompany/{id}")
     public String update(Model model, @ModelAttribute(value = "c") Company c) {
        String errMsg = "";
        Date currentDate = new Date();
        if (currentDate.compareTo(c.getDateOfIncorporation()) > 0) {
            if (c.getPhone().length() == 10 && c.getPhone().codePointAt(0) == 48) {
                if (this.compaService.updateCompany(c) == true) {
                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                    simpleMail.setTo(c.getMail());
                    simpleMail.setSubject("Thông báo");
                    simpleMail.setText("Thông tin của bạn đã được cập nhật");

                    mailSender.send(simpleMail);
                    return "redirect:/profileCompany/{id}";
                }
            } else {
                errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
            }
        } else {
            errMsg = errMsg + "Ngày thành lập không thể lớn hơn ngày hiện tại (^-^) !!!";
        }
        model.addAttribute(
                "errMsg", errMsg);
        return "profileCompany";
    }
}
