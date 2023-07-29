/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Company;
import com.htran.repository.CompanyRepository;
import com.htran.service.CompanyService;
import java.util.List;
import java.util.Map;
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

    @Override
    public List<Company> getCompanies(Map<String, String> params) {
        return this.companyRepo.getCompanies(params);
    }

}
