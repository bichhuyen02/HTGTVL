/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.UserService;
import java.util.Date;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
public class AddUserController {

    @Autowired
    private UserService userService;

    @Autowired
    private AccountService accService;

    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/addUser")
    public String addUser(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addUsers", new User());
        return "addUser";
    }

    @GetMapping("/addUser/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addUsers", this.userService.getUserById(id));
        return "addUser";
    }

    @PostMapping("/addUser")
    public String add(Model model, @ModelAttribute(value = "addUsers") @Valid User u,
            BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (currentDate.compareTo(u.getBirthDate()) > 0) {
            if (u.getPhone().length() == 10 && u.getPhone().codePointAt(0) == 48) {
                if (u.getPassword() != null && u.getUsername() != null) {
                    if (u.getPassword().equals(u.getConfirmPassword())) {
                        if (this.accService.getAccountByUsern(u.getUsername()) == false) {
                            if (!rs.hasErrors()) {
                                if (this.userService.addOrUpdateUser(u) == true) {
                                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                                    simpleMail.setTo(u.getMail());
                                    simpleMail.setSubject("Thông báo");
                                    simpleMail.setText(u.getName() + " đã đăng kí tài khoản thành công");

                                    mailSender.send(simpleMail);
                                    return "redirect:/";
                                }
                            }
                        } else {
                            errMsg = errMsg + "Tên đăng nhập này đã tồn tại(^-^) !!!";
                        }
                    } else {
                        errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                    }
                } else {
                    if (u.getPassword() == null) {
                        errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                    } else {
                        errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                    }
                }
            } else {
                errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
            }
        } else {
            errMsg = errMsg + "Ngày thành lập không thể lớn hơn ngày hiện tại (^-^) !!!";
        }
        model.addAttribute(
                "errMsg", errMsg);
        return "addUser";
    }
}
