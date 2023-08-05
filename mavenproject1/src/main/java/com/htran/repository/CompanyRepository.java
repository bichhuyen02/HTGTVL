/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Company;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ACER
 */
public interface CompanyRepository {
     List<Company> getCompanies(Map<String, String> params);
     boolean addOrUpdateCompany(Company c);
     boolean deleteCompany(int id);
     Company getCompanyById(int id);
}

