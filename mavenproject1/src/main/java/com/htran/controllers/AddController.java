/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Account;
import com.htran.pojo.Category;
import com.htran.pojo.Company;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.pojo.Location;
import com.htran.pojo.Post;
import com.htran.pojo.User;
import com.htran.service.AccountService;
import com.htran.service.CategoryService;
import com.htran.service.CompanyService;
import com.htran.service.CvService;
import com.htran.service.JobService;
import com.htran.service.LocationService;
import com.htran.service.PositionService;
import com.htran.service.PostService;
//import com.htran.service.SaveService;
import com.htran.service.UserService;
import java.security.Principal;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpSession;
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
 * @author Admin
 */
@Controller
public class AddController {

    @Autowired
    private CategoryService cateService;

    @Autowired
    private CompanyService compaService;

    @Autowired
    private AccountService accService;

    @Autowired
    private JobService jobService;

    @Autowired
    private LocationService locationService;

    @Autowired
    private PositionService posiService;

    @Autowired
    private UserService userService;

    @Autowired
    private CvService cvService;

    @Autowired
    private PostService postService;

    @Autowired
    private JavaMailSender mailSender;

    //-----------------------------------category-----------------------------------------
    @GetMapping("/addCate")
    public String addCate(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addCates", new Category());

        return "addCate";
    }

    @GetMapping("/addCate/{id}")
    public String updateCate(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addCates", this.cateService.getCategoryById(id));
        return "addCate";
    }

    @PostMapping("/addCate")
    public String addCa(Model model, @ModelAttribute(value = "addCates") @Valid Category c,
            BindingResult rs) {
        String errMsg = "";
        if (this.locationService.getLocationByName(c.getName()) == false) {
            if (this.cateService.addOrUpdateCategory(c) == true) {
                return "redirect:/admin/categories";
            }
        } else {
            errMsg = errMsg + " Tên đã tồn tại (^-^) !!!";
        }
         model.addAttribute("errMsg", errMsg);
        return "addCate";
    }
    //---------------------------------end category---------------------------------------

    //-----------------------------------company------------------------------------------
    @GetMapping("/addCompany")
    public String addCompany(Model model, HttpSession session) {
        model.addAttribute("addCompanies", new Company());
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        return "addCompany";
    }

    @GetMapping("/addCompany/{id}")
    public String updateCom(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addCompanies", this.compaService.getCompanyById(id));
        return "addCompany";
    }

    @PostMapping("/addCompany")
    public String addCom(Model model, @ModelAttribute(value = "addCompanies") @Valid Company c,
            BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (c.getId() == null) {
            if (c.getDateOfIncorporation() != null && currentDate.compareTo(c.getDateOfIncorporation()) > 0) {
                if (c.getPhone().length() == 10 && c.getPhone().codePointAt(0) == 48) {
                    if (this.accService.getAccountByUsern(c.getUsername()) == false) {
                        if (c.getPassword() != null && c.getUsername() != null) {
                            if (c.getPassword().length() >= 6 && c.getPassword().length() <= 10) {
                                if (c.getPassword().equals(c.getConfirmPassword())) {
                                    if (!rs.hasErrors()) {
                                        if (this.compaService.addOrUpdateCompany(c) == true) {
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
        } else {
            if (c.getDateOfIncorporation() != null && currentDate.compareTo(c.getDateOfIncorporation()) > 0) {  //1
                if (c.getPhone().length() == 10 && c.getPhone().codePointAt(0) == 48) { //2
                    String name = this.accService.getAccountById(c.getId()).getUsername();
                    if (name != c.getUsername()) { //3
                        if (this.accService.getAccountByUsern(c.getUsername()) == false) { //4
                            String pass = this.accService.getAccountById(c.getId()).getPassword();
                            if (pass != c.getPassword()) { //5
                                if (c.getPassword() != null && c.getUsername() != null) { //6
                                    if (c.getPassword().length() >= 6 && c.getPassword().length() <= 10) { //7
                                        if (c.getPassword().equals(c.getConfirmPassword())) { //8
                                            if (!rs.hasErrors()) {
                                                if (this.compaService.addOrUpdateCompany(c) == true) {
                                                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                                                    simpleMail.setTo(c.getMail());
                                                    simpleMail.setSubject("Thông báo");
                                                    simpleMail.setText(c.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                                    mailSender.send(simpleMail);
                                                    return "redirect:/";
                                                }
                                            }
                                        } else { //8
                                            errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                                        }
                                    } else { //7
                                        errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
                                    }
                                } else { //6
                                    if (c.getPassword() == null) {
                                        errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                                    } else {
                                        errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                                    }
                                }
                            } else { //5
                                if (!rs.hasErrors()) {
                                    if (this.compaService.addOrUpdateCompany(c) == true) {
                                        SimpleMailMessage simpleMail = new SimpleMailMessage();
                                        simpleMail.setTo(c.getMail());
                                        simpleMail.setSubject("Thông báo");
                                        simpleMail.setText(c.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                        mailSender.send(simpleMail);
                                        return "redirect:/";
                                    }
                                }
                            }
                        } else { //4
                            errMsg = errMsg + "Tên đăng nhập này đã tồn tại(^-^) !!!";
                        }
                    } else { //3
                        String pass = this.accService.getAccountById(c.getId()).getPassword();
                        if (pass != c.getPassword()) { //5
                            if (c.getPassword() != null && c.getUsername() != null) { //6
                                if (c.getPassword().length() >= 6 && c.getPassword().length() <= 10) { //7
                                    if (c.getPassword().equals(c.getConfirmPassword())) { //8
                                        if (!rs.hasErrors()) {
                                            if (this.compaService.addOrUpdateCompany(c) == true) {
                                                SimpleMailMessage simpleMail = new SimpleMailMessage();
                                                simpleMail.setTo(c.getMail());
                                                simpleMail.setSubject("Thông báo");
                                                simpleMail.setText(c.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                                mailSender.send(simpleMail);
                                                return "redirect:/";
                                            }
                                        }
                                    } else { //8
                                        errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                                    }
                                } else { //7
                                    errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
                                }
                            } else { //6
                                if (c.getPassword() == null) {
                                    errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                                } else {
                                    errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                                }
                            }
                        } else { //5
                            if (!rs.hasErrors()) {
                                if (this.compaService.addOrUpdateCompany(c) == true) {
                                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                                    simpleMail.setTo(c.getMail());
                                    simpleMail.setSubject("Thông báo");
                                    simpleMail.setText(c.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                    mailSender.send(simpleMail);
                                    return "redirect:/";
                                }
                            }
                        }
                    }
                } else { //2
                    errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
                }
            } else { //1
                if (c.getDateOfIncorporation() == null) {
                    errMsg = errMsg + "Ngày thành lập không được để trống (^-^) !!!";
                } else {
                    errMsg = errMsg + "Ngày thành lập không thể lớn hơn ngày hiện tại (^-^) !!!";
                }
            }
        }
        model.addAttribute("errMsg", errMsg);
        return "addCompany";
    }
    //---------------------------------end company----------------------------------------

    //--------------------------------------Job-------------------------------------------
    @GetMapping("/addJob")
    public String addjob(Model model, @RequestParam Map<String, String> params,
            Principal pricipal, HttpSession session) {
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        String role = "ROLE_EMP";
        model.addAttribute("addjobs", new Job());
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        if (acc.getUserRole().equals(role)) {
            Company com = this.compaService.getCompanyByAccId(acc.getId());
            model.addAttribute("jobsC", this.jobService.getJobsByComId(com));
        }
        model.addAttribute("positions", this.posiService.getPositions(params));

        return "addJob";
    }

    @GetMapping("/addJob/{id}")
    public String updateJob(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addjobs", this.jobService.getJobById(id));
        return "addJob";
    }

    @PostMapping("/addJob")
    public String addJ(Model model, @ModelAttribute(value = "addjobs")
            @Valid Job j,BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (j.getOutOffTime() != null && currentDate.compareTo(j.getOutOffTime()) < 0) {
            if (j.getQuantity() > 0) {
                if (!rs.hasErrors()) {
                    if (this.jobService.addOrUpdateJob(j) == true) {
                        return "redirect:/jobs";
                    }
                }
            } else {
                errMsg = errMsg + "Số lượng tuyển không thể 0(^-^) !!!";
            }
        } else {
            if (j.getOutOffTime() == null) {
                errMsg = errMsg + "Ngày hết hạn không được để trống(^-^) !!!";
            } else {
                errMsg = errMsg + "Ngày hết hạn không được nhỏ hơn ngày hiện tại(^-^) !!!";
            }
        }
        model.addAttribute("errMsg", errMsg);
        return "addJob";
    }
    //------------------------------------end job-----------------------------------------

    //-----------------------------------location-----------------------------------------
    @GetMapping("/addLocation")
    public String addLocation(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addLocations", new Location());

        return "addLocation";
    }

    @GetMapping("/addLocation/{id}")
    public String updateLocation(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addLocations", this.locationService.getLocationById(id));
        return "addLocation";
    }

    @PostMapping("/addLocation")
    public String addLoca(Model model, @ModelAttribute(value = "addLocations")
            @Valid Location lctn, BindingResult rs) {
        String errMsg = "";
        if (this.locationService.getLocationByName(lctn.getName()) == false) {
            if (!rs.hasErrors()) {
                if (this.locationService.addOrUpdateLocation(lctn) == true) {
                    return "redirect:/admin/location";
                }
            }
        } else {
            errMsg = errMsg + " Tên đã tồn tại (^-^) !!!";
        }
         model.addAttribute("errMsg", errMsg);
        return "addLocation";
    }
    //---------------------------------end location---------------------------------------

    //-------------------------------------user-------------------------------------------
    @GetMapping("/addUser")
    public String addUser(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("addUsers", new User());
        return "addUser";
    }

    @GetMapping("/addUser/{id}")
    public String updateUser(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addUsers", this.userService.getUserById(id));
        return "addUser";
    }

    @PostMapping("/addUser")
    public String addU(Model model, @ModelAttribute(value = "addUsers")
            @Valid User u, BindingResult rs) {
        String errMsg = "";
        Date currentDate = new Date();
        if (u.getId() == null) {
            if (u.getBirthDate() != null && currentDate.compareTo(u.getBirthDate()) > 0) {
                if (u.getPhone().length() == 10 && u.getPhone().codePointAt(0) == 48) {
                    if (u.getPassword() != null && u.getUsername() != null) {
                        if (u.getPassword().length() >= 6 && u.getPassword().length() <= 10) {
                            if (u.getPassword().equals(u.getConfirmPassword())) {
                                if (this.accService.getAccountByUsern(u.getUsername()) == false) {
                                    if (!rs.hasErrors()) {
                                        if (this.userService.addOrUpdateUser(u) == true) {
                                            SimpleMailMessage simpleMail = new SimpleMailMessage();
                                            simpleMail.setTo(u.getMail());
                                            simpleMail.setSubject("Thông báo");
                                            simpleMail.setText(u.getName() + " đã đăng kí tài khoản thành công bởi người quản trị");

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
                            errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
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
                if (u.getBirthDate() == null) {
                    errMsg = errMsg + "Ngày sinh không được để trống (^-^) !!!";
                } else {
                    errMsg = errMsg + "Ngày sinh không thể lớn hơn ngày hiện tại (^-^) !!!";
                }
            }
        } else {
            if (u.getBirthDate() != null && currentDate.compareTo(u.getBirthDate()) > 0) {  //1
                if (u.getPhone().length() == 10 && u.getPhone().codePointAt(0) == 48) { //2
                    String name = this.accService.getAccountById(u.getId()).getUsername();
                    if (name != u.getUsername()) { //3
                        if (this.accService.getAccountByUsern(u.getUsername()) == false) { //4
                            String pass = this.accService.getAccountById(u.getId()).getPassword();
                            if (pass != u.getPassword()) { //5
                                if (u.getPassword() != null && u.getUsername() != null) { //6
                                    if (u.getPassword().length() >= 6 && u.getPassword().length() <= 10) { //7
                                        if (u.getPassword().equals(u.getConfirmPassword())) { //8
                                            if (!rs.hasErrors()) {
                                                if (this.userService.addOrUpdateUser(u) == true) {
                                                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                                                    simpleMail.setTo(u.getMail());
                                                    simpleMail.setSubject("Thông báo");
                                                    simpleMail.setText(u.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                                    mailSender.send(simpleMail);
                                                    return "redirect:/";
                                                }
                                            }
                                        } else { //8
                                            errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                                        }
                                    } else { //7
                                        errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
                                    }
                                } else { //6
                                    if (u.getPassword() == null) {
                                        errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                                    } else {
                                        errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                                    }
                                }
                            } else { //5
                                if (!rs.hasErrors()) {
                                    if (this.userService.addOrUpdateUser(u) == true) {
                                        SimpleMailMessage simpleMail = new SimpleMailMessage();
                                        simpleMail.setTo(u.getMail());
                                        simpleMail.setSubject("Thông báo");
                                        simpleMail.setText(u.getName() + " đã đăng kí thông tin của bạn thành công bởi người quản trị.");

                                        mailSender.send(simpleMail);
                                        return "redirect:/";
                                    }
                                }
                            }
                        } else { //4
                            errMsg = errMsg + "Tên đăng nhập này đã tồn tại(^-^) !!!";
                        }
                    } else { //3
                        String pass = this.accService.getAccountById(u.getId()).getPassword();
                        if (pass != u.getPassword()) { //5
                            if (u.getPassword() != null && u.getUsername() != null) { //6
                                if (u.getPassword().length() >= 6 && u.getPassword().length() <= 10) { //7
                                    if (u.getPassword().equals(u.getConfirmPassword())) { //8
                                        if (!rs.hasErrors()) {
                                            if (this.userService.addOrUpdateUser(u) == true) {
                                                SimpleMailMessage simpleMail = new SimpleMailMessage();
                                                simpleMail.setTo(u.getMail());
                                                simpleMail.setSubject("Thông báo");
                                                simpleMail.setText(u.getName() + "thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                                mailSender.send(simpleMail);
                                                return "redirect:/";
                                            }
                                        }
                                    } else { //8
                                        errMsg = errMsg + " Mật khẩu nhập không khớp (^-^) !!!";
                                    }
                                } else { //7
                                    errMsg = errMsg + " Kí tự mật khẩu không được <6 và >10 (^-^) !!!";
                                }
                            } else { //6
                                if (u.getPassword() == null) {
                                    errMsg = errMsg + " Mật khẩu không được để trống (^-^) !!!";
                                } else {
                                    errMsg = errMsg + " Tên đăng nhập không được để trống (^-^) !!!";
                                }
                            }
                        } else { //5
                            if (!rs.hasErrors()) {
                                if (this.userService.addOrUpdateUser(u) == true) {
                                    SimpleMailMessage simpleMail = new SimpleMailMessage();
                                    simpleMail.setTo(u.getMail());
                                    simpleMail.setSubject("Thông báo");
                                    simpleMail.setText(u.getName() + " thông tin đã được cập nhật lại thành công bởi người quản trị.");

                                    mailSender.send(simpleMail);
                                    return "redirect:/";
                                }
                            }
                        }
                    }
                } else { //2
                    errMsg = errMsg + "Số điện thoại sai định dạng (^-^) !!!";
                }
            } else { //1
                if (u.getBirthDate() == null) {
                    errMsg = errMsg + "Ngày sinh không được để trống (^-^) !!!";
                } else {
                    errMsg = errMsg + "Ngày sinh không thể lớn hơn ngày hiện tại (^-^) !!!";
                }
            }
        }
        model.addAttribute(
                "errMsg", errMsg);
        return "addUser";
    }
    //-----------------------------------end user-----------------------------------------

    //---------------------------------------cv-------------------------------------------
    @GetMapping("/jobDetail/{id}/applyCv")
    public String addCv(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addCv", new Cv());
        model.addAttribute("jobDetails", this.jobService.getJobById(id));

        return "applyCv";
    }

    @PostMapping("/jobDetail/{id}/applyCv")
    public String addCV(@ModelAttribute(value = "addCv") Cv cv,
            @PathVariable(value = "id") int id, Principal pricipal) {
        Account acc = this.accService.getAccountByUsername(pricipal.getName());
        User u = new User();
        u = this.userService.getUserByAccId(acc.getId());
        cv.setUserId(u);
        Job j = this.jobService.getJobById(id);
        cv.setJobId(j);

        if (this.cvService.addCv(cv) == true) {
            SimpleMailMessage simpleMail = new SimpleMailMessage();
            simpleMail.setTo(u.getMail());
            simpleMail.setSubject("Thông báo");
            simpleMail.setText(u.getName() + " đã nộp Cv cho " + j.getTitle() + " thành công");
            return "redirect:/jobDetail/{id}";
        }
        return "applyCv";
    }
    //-------------------------------------end cv-----------------------------------------
//
    //---------------------------------------post-------------------------------------------
    @GetMapping("/post/{id}")
    public String post(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("addPost", new Post());
        model.addAttribute("u", this.userService.getUserById(id));

        return "post";
    }

    @PostMapping("/post/{id}")
    public String addPost(@ModelAttribute(value = "addPost") Post p, 
            @PathVariable(value = "id") int id) {
        User u = new User();
        u = this.userService.getUserById(id);
        p.setUserId(u);

        if (this.postService.addPost(p) == true) {
            SimpleMailMessage simpleMail = new SimpleMailMessage();
            simpleMail.setTo(u.getMail());
            simpleMail.setSubject("Thông báo");
            simpleMail.setText(u.getName() + " đã đăng tin " + "thành công");
            return "redirect:/jobs";
        }
        return "post";
    }
    //-------------------------------------end post-----------------------------------------
}
