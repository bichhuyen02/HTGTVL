/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Comment;
import com.htran.pojo.Company;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CategoryService;
import com.htran.service.CommentService;
import com.htran.service.CompanyService;
import com.htran.service.CvService;
import com.htran.service.JobService;
import com.htran.service.PostService;
import com.htran.service.UserService;
import java.security.Principal;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;

/**
 *
 * @author Admin
 */
@Controller
@PropertySource("classpath:configs.properties")
public class Controllers {
    @Autowired
    private CategoryService cateService;

    @Autowired
    private CompanyService compaService;

    @Autowired
    private AccountService accService;

    @Autowired
    private JobService jobService;

    @Autowired
    private UserService userService;

    @Autowired
    private CvService cvService;

    @Autowired
    private CommentService cmtService;
    
    @Autowired
    private PostService postService;
    
    @Autowired
    private JavaMailSender mailSender;

    @Resource
    private Environment env;

    //----------------------------------------Company-----------------------------------
    @RequestMapping("/companies")
    public String company(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("companiesT", this.compaService.getCompaniesByAccIdT());
        model.addAttribute("companiesF", this.compaService.getCompaniesByAccIdF());

        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        int count = this.compaService.countCompany();
        model.addAttribute("counter1", Math.ceil(count * 1.0 / pageSize));

        return "companies";

    }
    //--------------------------------------end Company---------------------------------

    //--------------------------------------CompanyDetail-------------------------------
    @GetMapping("/companyDetail/{id}")
    public String companyDetail(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("cmt", new Comment());
        model.addAttribute("copaDetails", this.compaService.getCompanyById(id));
        Company com = this.compaService.getCompanyById(id);
        model.addAttribute("cmts", this.cmtService.getCommentsbyCompanyId(com));
        model.addAttribute("job", this.jobService.getJobsByComId(com));
        return "companyDetail";
    }

    @PostMapping("/companyDetail/{id}")
    public String add(@ModelAttribute(value = "cmt") Comment cmt,
            @PathVariable(value = "id") int id, Principal pricipal) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        Company com = this.compaService.getCompanyById(id);
        User u = new User();
        u = this.userService.getUserByAccId(acc.getId());
        cmt.setUserId(u);
        cmt.setCompanyId(com);
        if (this.cmtService.addComment(cmt) == true) {
            return "redirect:/companyDetail/{id}";
        }
        return "companyDetail";
    }
    //------------------------------------end CompanyDetail-----------------------------

    //-----------------------------------------Cv---------------------------------------
    @RequestMapping("/cv")
    public String cv(Model model, Principal pricipal) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        Company com = this.compaService.getCompanyByAccId(acc.getId());
        model.addAttribute("jobC", this.jobService.getJobsByComId(com));
        model.addAttribute("cvs", this.cvService.getCv(com.getId()));
        model.addAttribute("cvT", this.cvService.getCvT(com.getId()));
        return "CV";
    }
    //---------------------------------------end Cv-------------------------------------

    //----------------------------------------Job---------------------------------------
    @GetMapping("/jobs")
    public String job(Model model, @RequestParam Map<String, String> params, Principal pricipal) {
        String role = "ROLE_EMP";
        model.addAttribute("jobs", this.jobService.getJobs(params));
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        if (acc.getUserRole().equals(role)) {
            Company com = this.compaService.getCompanyByAccId(acc.getId());
            model.addAttribute("jobsC", this.jobService.getJobsByComId(com));
        }

        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        int count = this.jobService.countJob();
        model.addAttribute("counter", Math.ceil(count * 1.0 / pageSize));

        return "jobs";
    }
    
    @GetMapping("/jobss")
    public String jobs(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("jobs", this.jobService.getJobs(params));
        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        int count = this.jobService.countJob();
        model.addAttribute("counter", Math.ceil(count * 1.0 / pageSize));

        return "jobss";
    }
    //--------------------------------------end job-------------------------------------

    //--------------------------------------JobDetail-----------------------------------
    @RequestMapping("/jobDetail/{id}")
    public String jobDetail(Model model, @PathVariable(value = "id") int id,
            HttpSession session, HttpServletRequest request) {
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        model.addAttribute("jobDetails", this.jobService.getJobById(id));
        String username = (String) session.getAttribute("username");
        if (username!=null) {
            Job j = this.jobService.getJobById(id);
            Account acc = this.accService.getAccountByUsername(username);
            User u = this.userService.getUserByAccId(acc.getId());
        }
        return "jobDetail";
    }
    //------------------------------------end JobDetail---------------------------------
    
    //--------------------------------------Search-----------------------------------
    @GetMapping("/search")
    public String search(Model model,@RequestParam Map<String, String> params) {
        
        model.addAttribute("us", this.userService.getUsers(params));
        model.addAttribute("post", this.postService.getPosts(params));
        return "search";
    }
    
    @GetMapping("/search/{id}")
    public String mail(Model model, @PathVariable(value = "id") int id,
            @RequestParam Map<String, String> params, Principal pricipal) {
        model.addAttribute("us", this.userService.getUsers(params));
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        Company c = this.compaService.getCompanyByAccId(acc.getId());
        User u = this.userService.getUserById(id);
        SimpleMailMessage simpleMail = new SimpleMailMessage();
                                            simpleMail.setTo(u.getMail());
                                            simpleMail.setSubject("Thông báo");
                                            simpleMail.setText("Sau khi công ty " + c.getName() + " xem thông tin của bạn"
                                                    + " cảm thấy bạn có nhiều tiêu chí phù hợp với yêu cầu bên công ty."
                                                    + " Nếu bạn có hứng thú với bên công ty bạn có thể nộp CV thông qua mail "
                                                    + c.getMail() + " và đợi thông báo bên công ty.");

                                            mailSender.send(simpleMail);
        return "search";
    }
    //------------------------------------end Search---------------------------------
    
    //----------------------------------Show, Dowload PDF------------------------------------
    @GetMapping("/download/{id}")
    public ResponseEntity<org.springframework.core.io.Resource> downloadFile(Model model, @PathVariable("id") int id) {

        Cv p = this.cvService.getCvById(id);
        if (p == null) {
            return ResponseEntity.notFound().build();
        }

        ByteArrayResource resource = new ByteArrayResource(p.getData());

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + p.getName())
                .contentType(MediaType.APPLICATION_PDF)
                .contentLength(p.getData().length)
                .body(resource);
    }
    
    @GetMapping("/pdf/{id}/data")
    public ResponseEntity<byte[]> getPdfData(@PathVariable("id") int id) {
        Cv pdfFile = this.cvService.getCvById(id);

        if (pdfFile != null) {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentDisposition(ContentDisposition.builder("inline").filename(pdfFile.getName()).build());
            headers.setContentLength(pdfFile.getData().length);

            return new ResponseEntity<>(pdfFile.getData(), headers, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/pdf/view/{id}")
    public String viewPdf(@PathVariable("id") int id, Model model) {
        model.addAttribute("pdf", this.cvService.getCvById(id));
        return "pdf";
    }
    //---------------------------------end Show, Dowload PDF---------------------------------
}
