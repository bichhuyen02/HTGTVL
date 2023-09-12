  /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Cv;
import com.htran.pojo.User;
import com.htran.service.CompanyService;
import com.htran.service.CvService;
import com.htran.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ACER
 */
@RestController
public class ApiCvController {
    @Autowired
    private CvService cvService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private CompanyService compaService;

    @Autowired
    private JavaMailSender mailSender;
    
    @DeleteMapping("/cv/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "id") int id) {
        this.cvService.deleteCv(id);
    }

    @PutMapping("/cv/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void updateActive(@PathVariable(value = "id") int id) {
        this.cvService.UpdateActive(id);
        Cv cv = this.cvService.getCvById(id);
        User u = this.userService.getUserById(cv.getUserId().getId());
        SimpleMailMessage simpleMail = new SimpleMailMessage();
        simpleMail.setTo(u.getMail());
        simpleMail.setSubject("Thông báo");
        simpleMail.setText("Chúc mừng bạn "+u.getName()+" đã trúng tuyển công việc " + cv.getJobId().getTitle()
        + " ở " + cv.getJobId().getAddress() + ". Hãy chờ liên lạc của công ty" + cv.getJobId().getCompanyId().getName()
        + "hoặc có thể liên lạc qua mail này "+ cv.getJobId().getCompanyId().getMail()+ "hoặc SĐT" +
                cv.getJobId().getCompanyId().getPhone());

        mailSender.send(simpleMail);
    }
}
