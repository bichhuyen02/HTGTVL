/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.service.AccountService;
import com.htran.service.CompanyService;
import java.util.Date;
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
public class AddCompanyController {

    @Autowired
    private CompanyService companyService;

    @Autowired
    private AccountService accService;

    @Autowired
    private JavaMailSender mailSender;

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
    public String add(Model model, @ModelAttribute(value = "addCompanies") @Valid Company c,
            BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (c.getDateOfIncorporation() != null && currentDate.compareTo(c.getDateOfIncorporation()) > 0) {
            if (c.getPhone().length() == 10 && c.getPhone().codePointAt(0) == 48) {
                if (this.accService.getAccountByUsern(c.getUsername()) == false) {
                    if (c.getPassword() != null && c.getUsername() != null) {
                        if (c.getPassword().length() >= 6 && c.getPassword().length() <= 10) {
                            if (c.getPassword().equals(c.getConfirmPassword())) {
                                if (!rs.hasErrors()) {
                                    if (this.companyService.addOrUpdateCompany(c) == true) {
                                        SimpleMailMessage simpleMail = new SimpleMailMessage();
                                        simpleMail.setTo(c.getMail());
                                        simpleMail.setSubject("Thông báo");
                                        simpleMail.setText(c.getName() + " đã đăng kí thông tin của công ty thành công và hãy chờ quản trị duyệt");

                                        mailSender.send(simpleMail);
                                        return "redirect:/";
                                    }
                                }
                            } else {
                                errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                            }
                        } else {
                            errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
                        }
                    } else {
                        if (c.getPassword() == null) {
                            errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                        } else {
                            errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                        }
                    }
                } else {
                    errMsg = errMsg + "Tên đăng nhập này đã tồn tại(^-^) !!!";
                }
            } else {
                errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
            }
        } else {
            if (c.getDateOfIncorporation() == null) {
                errMsg = errMsg + "Ngày thành lập không được để trống (^-^) !!!";
            } else {
                errMsg = errMsg + "Ngày thành lập không thể lớn hơn ngày hiện tại (^-^) !!!";
            }
        }
        model.addAttribute("errMsg", errMsg);
        return "addCompany";
    }
}
