/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htran.pojo.Company;
import com.htran.repository.CompanyRepository;
import com.htran.service.CompanyService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
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
    private Cloudinary cloudinary;

    @Override
    public List<Company> getCompanies(Map<String, String> params) {
        return this.companyRepo.getCompanies(params);
    }

 
     @Override
    public boolean addOrUpdateCompany(Company c) {
        if (!c.getFile().isEmpty()) {
            try {
                Map res = this.cloudinary.uploader().upload(c.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                c.setImage(res.get("secure_url").toString());
            } catch (IOException ex) {
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
}
