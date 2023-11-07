/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.repository.AccountRepository;
import com.htran.repository.CompanyRepository;
import com.htran.service.CompanyService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractList;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author ACER
 */
@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepo;

    @Autowired
    private AccountRepository accRepo;

    @Autowired
    public BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private Cloudinary cloudinary;

    @Autowired
    private SimpleDateFormat simpleDateFormat;

    @Override
    public List<Company> getCompanies(Map<String, String> params) {
        return this.companyRepo.getCompanies(params);
    }

    @Override
    @Transactional
    public boolean addOrUpdateCompany(Company c) {
        Date currentDate = new Date();
        if (c.getId() == null) {
            c.setPassword(this.passwordEncoder.encode(c.getPassword()));
        }

        if (!c.getFile().isEmpty()) {

            try {
                Map res = this.cloudinary.uploader().upload(c.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                c.setImage(res.get("secure_url").toString());
                c.setDateOfIncorporation(this.simpleDateFormat
                        .parse(this.simpleDateFormat.format(c.getDateOfIncorporation())));
            } catch (IOException ex) {
                Logger.getLogger(CompanyServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ParseException ex) {
                Logger.getLogger(CompanyServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return this.companyRepo.addOrUpdateCompany(c);
    }

    @Override
    public Company getCompanyById(int id) {
        return this.companyRepo.getCompanyById(id);
    }

    @Override
    public boolean deleteCompany(int id) {
        return this.companyRepo.deleteCompany(id);
    }

    @Override
    public boolean UpdateActive(int id) {
        return this.companyRepo.UpdateActive(id);
    }

    @Override
    public List<Company> getCompaniesByAccIdT() {
        return this.companyRepo.getCompaniesByAccIdT();
    }

    @Override
    public List<Company> getCompaniesByAccIdF() {
        return this.companyRepo.getCompaniesByAccIdF();
    }

    @Override
    public Company getCompanyByAccId(int id) {
        return this.companyRepo.getCompanyByAccId(id);
    }

    @Override
    public int countCompany() {
          return this.companyRepo.countCompany();
    }

    @Override
    public boolean updateCompany(Company c) {
        try {
            c.setDateOfIncorporation(this.simpleDateFormat
                    .parse(this.simpleDateFormat.format(c.getDateOfIncorporation())));
        } catch (ParseException ex) {
            Logger.getLogger(CompanyServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return this.companyRepo.updateCompany(c);
    }
}
