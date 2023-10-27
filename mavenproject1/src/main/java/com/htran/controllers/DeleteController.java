/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Company;
import com.htran.pojo.Cv;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CategoryService;
import com.htran.service.CompanyService;
import com.htran.service.CvService;
import com.htran.service.JobService;
import com.htran.service.LocationService;
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
 * @author Admin
 */
@RestController
public class DeleteController {

    @Autowired
    private CvService cvService;

    @Autowired
    private UserService userService;

    @Autowired
    private CategoryService cateService;

    @Autowired
    private CompanyService compaService;

    @Autowired
    private JobService jobService;

    @Autowired
    private LocationService locationService;

    @Autowired
    private AccountService accService;

    @Autowired
    private JavaMailSender mailSender;

    //-----------------------Category-------------------------------------
    @DeleteMapping("/addCate/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCate(@PathVariable(value = "id") int id) {
        this.cateService.deleteCategory(id);
    }
    //-----------------------end category----------------------------------

    //-------------------------Company-------------------------------------
    @DeleteMapping("/addCompany/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCom(@PathVariable(value = "id") int id) {
        this.compaService.deleteCompany(id);
    }

    @PutMapping("/addCompany/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void updateActiveCom(@PathVariable(value = "id") int id) {
        this.compaService.UpdateActive(id);
        Company com = this.compaService.getCompanyById(id);
//        SimpleMailMessage simpleMail = new SimpleMailMessage();
//        simpleMail.setTo(com.getMail());
//        simpleMail.setSubject("Thông báo");
//        simpleMail.setText(com.getName()+" đã được phép hoạt động");
//
//        mailSender.send(simpleMail);
    }
    //---------------------------end company------------------------------

    //--------------------------------Cv----------------------------------
    @DeleteMapping("/cv/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCv(@PathVariable(value = "id") int id) {
        this.cvService.deleteCv(id);
    }

    @PutMapping("/cv/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void updateActiveCv(@PathVariable(value = "id") int id) {
        this.cvService.UpdateActive(id);
        Cv cv = this.cvService.getCvById(id);
        User u = this.userService.getUserById(cv.getUserId().getId());
        SimpleMailMessage simpleMail = new SimpleMailMessage();
        simpleMail.setTo(u.getMail());
        simpleMail.setSubject("Thông báo");
        simpleMail.setText("Chúc mừng bạn " + u.getName() + " đã trúng tuyển công việc " + cv.getJobId().getTitle()
                + " ở " + cv.getJobId().getAddress() + ". Hãy chờ liên lạc của công ty" + cv.getJobId().getCompanyId().getName()
                + "hoặc có thể liên lạc qua mail này " + cv.getJobId().getCompanyId().getMail() + "hoặc SĐT"
                + cv.getJobId().getCompanyId().getPhone());

        mailSender.send(simpleMail);
    }
    //---------------------------------end Cv------------------------------

    //-----------------------------------Job--------------------------------
    @DeleteMapping("/addJob/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteJob(@PathVariable(value = "id") int id) {
        this.jobService.deleteJob(id);
    }
    //--------------------------------end Job-------------------------------

    //-------------------------------Location--------------------------------
    @DeleteMapping("/addLocation/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteLoca(@PathVariable(value = "id") int id) {
        this.locationService.deleteLocation(id);
    }
    //-----------------------------end Location------------------------------

    //--------------------------------User------------------------------------
    @DeleteMapping("/addUser/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteUser(@PathVariable(value = "id") int id) {
        this.userService.deleteUser(id);
    }
    //------------------------------end User----------------------------------
}
